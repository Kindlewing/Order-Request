import 'package:flutter/material.dart';
import 'package:order_request_ui/Models/Order.dart';

class OrderTile extends StatelessWidget {
  final Order order;

  OrderTile({required this.order});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          title: Text('Time leaving: ${order.timeLeaving!}'),
          subtitle: Text('Destination: ${order.destination!}'),
        ),
      ),
    );
  }}
