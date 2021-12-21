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
              children: <Widget>[
                SizedBox(height: 50),
                Text(
                  "Welcome to the order request app.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: onPressedLogin,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal[800]),
                  ),
                  child: const Text(
                      "Login"
                  ),
                ),
                ElevatedButton(
                    onPressed: onPressedLogin,
                    child: const Text(
                      "Create Account"
                  ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal[800]),
                  ),
                )
              ],
            ),
        )
      );
  }
}
