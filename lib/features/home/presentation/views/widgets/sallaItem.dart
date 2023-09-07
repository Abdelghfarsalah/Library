import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/manger/salla/cubit/salla_cubit.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/reating.dart';

class sallaItem extends StatelessWidget {
  const sallaItem({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(book.image ?? ''),
              ),
            ),
          ),
        const  SizedBox(width: 10,),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const  SizedBox(height: 20,),
                Text(
                  book.title ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
              
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    book.authorName ?? '',
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'free',
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    
                    BookRating(rating: book.rating ?? 12)
                  ],
                )
              ],
            ),
          ),
           SizedBox(
                width: MediaQuery.of(context).size.width*0.00,
                ),
          IconButton(onPressed: () {
            BlocProvider.of<SallaCubit>(context).removetosalla(book: book);
          }, icon:const Icon(FontAwesomeIcons.trash,size: 45,))
        
        
        ]),
      ),
    );
  }
}
