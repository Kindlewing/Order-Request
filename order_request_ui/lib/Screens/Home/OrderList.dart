import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/Order.dart';
import 'package:order_request_ui/Services/database.dart';
import 'package:provider/provider.dart';

import 'OrderTile.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final Database _database = Database();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Order>?> (
      future: _database.getOrders(),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return OrderTile(order: snapshot.data![index]);
            },
          );
        }
         else { return Container(); }
      }
    );
  }
}
