import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("This is HOME page"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Show a page over this page
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text('Profile'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () async {
                  //ARDI'S NOTE : Show a page and remove this page
                  dynamic x = await Navigator.pushNamed(context, '/status');
                  setState(() {
                    isOnline = x;
                  });
                },
                child: Text(isOnline ? 'Status : Online' : 'Status : Offline'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Show a page over this page and pass arguments
                  Navigator.pushNamed(context, '/chat',
                      arguments: {'name': 'Annie'});
                },
                child: Text('Chat with Annie'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Show a page over this page and pass arguments
                  Navigator.pushNamed(context, '/chat',
                      arguments: {'name': 'Hazel'});
                },
                child: Text('Chat with Hazel'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  //ARDI'S NOTE : Show a page and remove this page
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text('Log out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
