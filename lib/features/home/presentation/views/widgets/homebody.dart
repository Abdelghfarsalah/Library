import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/manger/featurebook/cubit/fetchfeaturebook_cubit.dart';
import 'package:my_ibrary/features/home/presentation/manger/newsetbook/fetchnewsetbook_cubit.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/Appbar.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/bestsellerlisetview.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/listviewhor.dart';

class homebody extends StatelessWidget {
  homebody({super.key});
  final List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<FetchfeaturebookCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const appbarhome(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: BlocConsumer<FetchfeaturebookCubit,
                      FetchfeaturebookState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state is Fetchfeaturebooksuccess) {
                        return listvirehor(
                          book: state.books,
                        );
                      } else if (state is Fetchfeaturebookfauiler) {
                        return const Text('wrong');
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  )),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
          SliverToBoxAdapter(child: BlocBuilder<FetchnewsetbookCubit, FetchnewsetbookState>(
            builder: (context, state) {
              if(state is Fetchnewsetbooksuccess )
              {
                return bestlistViewbody(
                book: state.books!,
              );
              }
              else{
                return Center(child: CircularProgressIndicator());
              }
            },
          ))
        ],
      ),
    );
  }
}
