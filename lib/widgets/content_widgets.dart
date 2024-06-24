import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContentWidgets extends StatelessWidget {
   ContentWidgets({super.key,required this.image,required this.text,required this.onTap});
  String? image;
  String? text;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image(image: AssetImage(image!)),
         InkWell(
           onTap: onTap,
           child: Text(text!,style: const TextStyle(
             fontWeight: FontWeight.w700,
             fontSize: 24,
             color: Colors.white
           ),),
         )
      ],
    );
  }
}
