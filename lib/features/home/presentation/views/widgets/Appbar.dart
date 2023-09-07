import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_ibrary/core/utils/assetdata.dart';
import 'package:my_ibrary/features/home/presentation/views/salla.dart';
import 'package:my_ibrary/features/search/presentation/views/search.dart';

class appbarhome extends StatelessWidget {
  const appbarhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Image(height: 25, image: AssetImage(AssetsData.logo)),
          const Spacer(),
          IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> salla()));
          },
          icon: const Icon(FontAwesomeIcons.cartShopping),
        ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const searchview()));
              },
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
