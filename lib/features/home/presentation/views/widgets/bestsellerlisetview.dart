import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/bestselleritem.dart';

class bestlistViewbody extends StatelessWidget {
  const bestlistViewbody({super.key,required this.book});
  final List<BookEntity> book;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: book.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: bestsellerItem(book: book[index],),
          );
        });
  }
}
