import 'package:flutter/material.dart';
import 'package:order_request_ui/Services/authenticator.dart';
import 'package:order_request_ui/Shared/constants.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({ required this.toggleView, });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Authenticator _auth = Authenticator();
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        actions: [
          TextButton.icon(
            label: Text(
              'Login',
            ),
            icon: Icon(Icons.person),
            onPressed: () {
              widget.toggleView();
            },
          ),
        ],
        title: Text(
          'Register',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value!.isEmpty ? 'Email is required' : null,
                      decoration: textInputDecoration.copyWith(hintText: 'Email'),
                      onChanged: (value) {
                        setState(() => _email = value);
                    }
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value!.length < 8 ? 'Password needs to be 8+ chars' : null,
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(hintText: 'Password'),
                      onChanged: (value) {
                        setState(() => _password = value);
                      }
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      validator: (value) => value.toString() != _password ? 'Passwords do not match' : null,
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(hintText: 'Confirm password'),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () async {
                      if(_formKey.currentState!.validate()) {
                        dynamic result = await _auth.register(_email.trim(), _password.trim());
                        if(result == null) {
                          setState(() => _error = 'Please supply valid credentials');
                        }
                      }
                    },
                    child: Text(
                      'Create Account',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    _error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0)
                  )
                ],
              )
            )
          ),
      ),
    );
  }
}
