import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_ibrary/features/home/presentation/views/salla.dart';

class appbardetils extends StatelessWidget {
  const appbardetils({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> salla()));
          },
          icon: const Icon(FontAwesomeIcons.cartShopping),
        ),
      ],
    );
  }
}
