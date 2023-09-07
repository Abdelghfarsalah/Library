import 'package:flutter/material.dart';
import 'package:my_ibrary/features/splash/presentation/views/widgets/splashbody.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splashbody(),
    );
  }
}
