import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/manger/newsetbook/fetchnewsetbook_cubit.dart';
import 'package:my_ibrary/features/home/presentation/manger/salla/cubit/salla_cubit.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/appbardetilsview.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/custombutton.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/itemlistviewhor.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/listviewbestseller.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/reating.dart';
import 'package:url_launcher/url_launcher.dart';

class detilsbody extends StatelessWidget {
  const detilsbody({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const appbardetils(),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.32,
            child: itemlisthor(
              books: book,
            )),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.authorName ?? '',
            maxLines: 2,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.rating ?? 1,
        )),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            custombutton(
                onTap: () async {
                  Uri uri = Uri.parse('${book.url}');
                  if (await canLaunchUrl(uri)) {
                    launchUrl(uri);
                  } else {}
                },
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.white,
                name: 'Preview',
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900)),
            custombutton(
                onTap: () {
                  BlocProvider.of<SallaCubit>(context).addtosalla(book: book);
                },
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.red,
                name: 'Add it to my bag',
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'You can also Like',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
            child: BlocConsumer<FetchnewsetbookCubit, FetchnewsetbookState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is Fetchnewsetbooksuccess) {
                  return bestlistViewdetilsbody(
                    book: state.books,
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )),
      ],
    );
  }
}
