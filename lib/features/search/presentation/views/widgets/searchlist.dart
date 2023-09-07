import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/bestselleritem.dart';

class Listsearch extends StatelessWidget {
  const Listsearch({super.key, required this.list});
  final List<BookEntity> list;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: bestsellerItem(
              book: list[index],
            ),
          );
        });
  }
}
