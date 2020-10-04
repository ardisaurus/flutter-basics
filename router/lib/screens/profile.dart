import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("This is PROFILE page"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Remove this page and show other page
                  Navigator.popAndPushNamed(context, '/editProfile');
                },
                child: Text('Edit Profile'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Remove this page and show page under it
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
