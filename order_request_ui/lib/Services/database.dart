import 'dart:convert';
import 'package:http/http.dart';
import 'package:order_request_ui/Models/Order.dart';
import 'package:order_request_ui/Models/RequestUser.dart';


class Database {
  /*
   * Fetches the orders from the API;
   * Converts the response into a list to be returned;
  */
  Future<List<Order>?> getOrders() async {
    var url = Uri.parse('https://10.0.2.2:5001/api/orders');
    var response = await get(url);
    try {
      if(response.statusCode == 200) {
        List<dynamic> orders = await jsonDecode(response.body);
        var toReturn = List.generate(orders.length, (index) {
          return Order.fromJson(orders[index]);
        });
        return toReturn;
      }
    } catch (error) {
      throw Exception("List is empty");
    }
  }

  /*
  *  Adds a user to the database and returns the response
  */
  Future<Response> addUser(RequestUser userToAdd) {
    return post(
      Uri.parse('https://10.0.2.2:5001/api/user/adduser'),
      headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(userToAdd)
    );
  }
}
