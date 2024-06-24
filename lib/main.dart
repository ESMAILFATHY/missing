import 'package:flutter/material.dart';
import 'package:missing/screens/page1.dart';

void main(){
   runApp(const MissingApp());
}
class MissingApp extends StatelessWidget {
  const MissingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
