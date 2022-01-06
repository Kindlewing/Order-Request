import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/User.dart';
import 'package:order_request_ui/Services/authenticator.dart';
import 'package:provider/provider.dart';
import 'Wrappers/wrapper.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext?  context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await Firebase.initializeApp();
  runApp(const OrderRequestApp());
}

class OrderRequestApp extends StatelessWidget {
  const OrderRequestApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<RequestUser?>.value(
      initialData: null,
      value: Authenticator().user,
        child: MaterialApp(
          title: 'Flutter Demo',
          home: Wrapper(),
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
        )
    );
  }
}