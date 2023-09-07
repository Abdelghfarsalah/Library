import 'package:flutter/material.dart';

class customtextfiled extends StatelessWidget {
  const customtextfiled({super.key,
  required this.onPressed,
  required this.onSubmitted});
  final void Function(String)? onSubmitted;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style:const TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w500 ),
      onChanged:onSubmitted,
      decoration: InputDecoration(
          
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.search),
          ),
          hintText: 'Search here...',
          suffixIconColor: Colors.white,
          hintStyle:
              TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.7)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}
