import 'package:flutter/material.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/homebody.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: homebody()),
    );
  }
}
