import 'dart:math';
import 'package:consume_api/services/Posts.dart';
import 'package:consume_api/models/Posts.dart';
import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final TextEditingController _titletext = TextEditingController();
  final TextEditingController _bodytext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
          actions: [
            IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: _titletext,
                  decoration: InputDecoration(hintText: 'Enter Title'),
                ),
                TextField(
                  controller: _bodytext,
                  decoration: InputDecoration(hintText: 'Enter Body'),
                ),
                ElevatedButton(
                  child: Text('Create Data'),
                  onPressed: () {
                    Random random = new Random();
                    int randomNumber = random.nextInt(100) + 100;
                    Post j = Post(
                        userId: randomNumber,
                        id: randomNumber,
                        title: _titletext.text,
                        body: _bodytext.text);
                    createPost(j).then((res) {
                      Navigator.pop(context, res);
                    }).catchError((error, stackTrace) {
                      print("outer: $error");
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
