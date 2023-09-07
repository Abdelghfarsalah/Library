import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  const custombutton(
      {super.key,
      required this.onTap,
      required this.borderRadius,
      required this.color,
      required this.name,
      required this.textStyle});
  final Color color;
  final String name;
  final void Function()? onTap;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(borderRadius: borderRadius, color: color),
        child: Center(
            child: Text(
          name,
          style: textStyle,
        )),
      ),
    );
  }
}
