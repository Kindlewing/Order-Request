import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/RequestUser.dart';
import 'package:order_request_ui/Screens/Home/home.dart';
import 'package:provider/provider.dart';

import 'authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<RequestUser?>(context);
    if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}