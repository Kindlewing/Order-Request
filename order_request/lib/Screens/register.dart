import 'package:flutter/material.dart';
import 'package:order_request/Shared/constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          'Register',
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
            TextFormField(
                obscureText: true,
                decoration: textInputDecoration.copyWith(hintText: 'Confirm password'),
                onChanged: (value) {
                  print(value);
                }
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {

              },
              child: Text(
                'Create Account',
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
