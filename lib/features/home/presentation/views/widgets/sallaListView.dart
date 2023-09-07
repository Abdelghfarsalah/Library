import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/sallaItem.dart';

class sallaListView extends StatelessWidget {
  const sallaListView({super.key,required this.book});
  final List< BookEntity> book;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: book.length,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index)=>sallaItem(book: book[index]));
  }
}