import 'package:flutter/material.dart';
import 'package:my_ibrary/features/search/presentation/views/widgets/searchbody.dart';

class searchview extends StatelessWidget {
  const searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: searchbody()),
    );
  }
}
