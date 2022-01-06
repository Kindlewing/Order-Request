import 'RequestUser.dart';

class Order {
  String? timeLeaving;
  String? destination;

  RequestUser orderCreator;


  Order({
    required this.timeLeaving,
    required this.destination,
    required this.orderCreator
  });


  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      timeLeaving: json['timeLeaving'],
      destination: json['destination'],
      orderCreator: json['orderCreator'],
    );
  }
}