import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/detils.dart';

class itemlisthor extends StatelessWidget {
  const itemlisthor({super.key,required this.books});
  final BookEntity books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>detilsview(book: books)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration:  BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(16)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image:NetworkImage(books.image!)),
                ),
          ),
        ),
      ),
    );
  }
}
