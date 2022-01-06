import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/Order.dart';
import 'package:order_request_ui/Services/authenticator.dart';
import 'package:order_request_ui/Services/database.dart';

import 'OrderList.dart';
import 'OrderTile.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final Authenticator _auth = Authenticator();
  final Database _database = Database();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .appBarTheme
            .backgroundColor,
        title: Text(
          "Home",
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
        centerTitle: true,
        actions: [
          TextButton.icon(
            onPressed: () async {
              await _auth.logout();
            },
            icon: Icon(Icons.person),
            label: Text(
                'Logout'
            ),
          )
        ],
      ),
      body: OrderList(),
    );
  }
}