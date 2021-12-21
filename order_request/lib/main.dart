import 'package:flutter/material.dart';
import 'Wrappers/authenticate.dart';

void main() {
  runApp(const OrderRequestApp());
}

class OrderRequestApp extends StatelessWidget {
  const OrderRequestApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Authenticate(),
      theme: ThemeData(
        backgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          centerTitle: true,
        ),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 20.0,
            color: Colors.amberAccent[200],
            letterSpacing: 1.5,
          ),
          button: TextStyle(
            color: Colors.black,
            letterSpacing: 1.5,
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
            )),
            backgroundColor: MaterialStateProperty.all(Colors.amberAccent[700])
          )
        ),
      ),
    );
  }
}