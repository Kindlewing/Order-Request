import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_request/Shared/constants.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Login',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Email'),
                        onChanged: (value) {
                          print(value);
                        }
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                        obscureText: true,
                        decoration: textInputDecoration.copyWith(hintText: 'Password'),
                        onChanged: (value) {
                          print(value);
                        }
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Login',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                )
            )
        )
    );
  }

}

