import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("This is LOGIN page"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Show a page and remove this page
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text('Login to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
