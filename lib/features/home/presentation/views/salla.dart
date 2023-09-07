import 'package:flutter/material.dart';
import 'package:my_ibrary/constant.dart';
import 'package:my_ibrary/features/home/presentation/views/widgets/sallabody.dart';

class salla extends StatelessWidget {
  const salla({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: primarycolor,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text(
              'Your library',
            )),
        body: sallabody(),
      ),
    );
  }
}
