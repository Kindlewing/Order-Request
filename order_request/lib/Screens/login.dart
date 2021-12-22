import 'package:flutter/material.dart';
import 'package:order_request/Services/authenticator.dart';
import 'package:order_request/Shared/constants.dart';

class Login extends StatefulWidget {
  final Function toggleView;

  Login({ required this.toggleView, });

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Authenticator _auth = Authenticator();
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'Login',
            style: Theme.of(context).textTheme.headline4,
          ),
          actions: [
            TextButton.icon(
              label: Text(
                'Register',
              ),
              icon: Icon(Icons.person),
              onPressed: () {
                widget.toggleView();
              },
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value!.isEmpty ? 'Enter an email' : null,
                      decoration: textInputDecoration.copyWith(hintText: 'Email'),
                      onChanged: (value) {
                        setState(() => _email = value);
                      }),
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value!.length < 8 ? 'Password must be 8 or more characters' : null,
                      obscureText: true,
                      decoration:
                          textInputDecoration.copyWith(hintText: 'Password'),
                      onChanged: (value) {
                        setState(() => _password = value);
                      }),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      await _auth.login(_email, _password);
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
            ))));
  }
}
