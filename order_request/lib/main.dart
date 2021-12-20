import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const OrderRequestApp());
}

class OrderRequestApp extends StatelessWidget {
  const OrderRequestApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}