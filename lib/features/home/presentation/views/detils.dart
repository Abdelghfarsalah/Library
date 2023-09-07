import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/Domain/entites/bookentity.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/detilsbody.dart';

class detilsview extends StatelessWidget {
  const detilsview({super.key,required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: detilsbody(book:book!,)),
    );
  }
}
