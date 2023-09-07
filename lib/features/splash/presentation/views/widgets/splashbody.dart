import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ibrary/features/home/presentation/views/home.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody> {
  void initState() {
    super.initState();
    gotohome();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Lottie.asset('assets/animation/data.json')],
      ),
    );
  }

  void gotohome() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }
}
