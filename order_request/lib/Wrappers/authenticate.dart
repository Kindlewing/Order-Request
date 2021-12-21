import 'package:flutter/material.dart';
import 'package:order_request/Screens/login.dart';
import 'package:order_request/Screens/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showLogin = false;

  @override
  Widget build(BuildContext context) {
    if(showLogin) {
      return Login();
    }
    return Register();
  }
}
