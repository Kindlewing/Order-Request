import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void onPressedLogin() {
    print("Button pressed");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text("Order Request App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text(
                "Welcome to the order request app.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: onPressedLogin,
                  child: const Text(
                      "Login"
                  ),
                )
              ],
            ),
          ],
        )
      )
    );
  }
}
