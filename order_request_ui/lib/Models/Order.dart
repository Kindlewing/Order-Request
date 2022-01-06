
class Order {
  String? timeLeaving;
  String? destination;


  Order({required this.timeLeaving, required this.destination});


  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      timeLeaving: json['timeLeaving'],
      destination: json['destination'],
    );
  }
}