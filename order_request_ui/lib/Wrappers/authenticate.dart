import 'package:flutter/material.dart';
import 'package:order_request_ui/Screens/login.dart';
import 'package:order_request_ui/Screens/register.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showLogin = true;

  void _toggleView() {
    setState(() => showLogin = !showLogin);
  }

  @override
  Widget build(BuildContext context) {
    if(showLogin) {
      return Login(toggleView: _toggleView);
    }
    return Register(toggleView: _toggleView);
  }
}
