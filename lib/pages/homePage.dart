import 'package:flutter/material.dart';
import 'package:unit_testing/utils/fieldValidator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/logo.png"),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                        TextFormField(
                          obscureText: false,
                          style: style,
                          validator: FieldValidator.validateEmail,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            labelText: "Email",
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(32.0) ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                        TextFormField(
                          obscureText: showPassword,
                          style: style,
                          validator: FieldValidator.validatePassword,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            labelText: "Password",
                            border: OutlineInputBorder( borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                        MaterialButton(
                          minWidth: 200.0,
                          color: Colors.lightBlue[100],
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
                          child: Text('Log In'),
                          onPressed: () => {},
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
