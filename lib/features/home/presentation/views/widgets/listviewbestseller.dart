

import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/itemlistviewhor.dart';

class bestlistViewdetilsbody extends StatelessWidget {
  const bestlistViewdetilsbody({super.key,required this.book});
  final List<BookEntity> book;
  @override
  Widget build(BuildContext context) {
    print(book.length);
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: book.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  itemlisthor(books: book[index],));
  }
}