import 'package:flutter/material.dart';
import 'package:project/page1.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CPU & MIPS',
      home: page1(),

    );
  }
}
