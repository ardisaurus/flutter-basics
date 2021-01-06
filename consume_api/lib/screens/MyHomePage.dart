import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:consume_api/services/Posts.dart';
import 'package:consume_api/models/Posts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> data = List<Post>();
  Future<List<Post>> postFuture;

  @override
  void initState() {
    super.initState();
    postFuture = fetchPost();
  }

  void refresh() async {
    List<Post> res = await fetchPost();
    setState(() {
      data.clear();
      data.addAll(res);
    });
  }

  void addPost(Post result) async {
    setState(() {
      data.add(result);
    });
  }

  void removePost(int id) async {
    Post res = await deletePost(id);
    if (res != null) {
      setState(() {
        data.removeWhere((item) => item.id == id);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: 'Refresh page',
              onPressed: () {
                refresh();
              },
            ),
          ],
        ),
        body: Container(
          child: FutureBuilder<List<Post>>(
            future: postFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                data = snapshot.data;
                return _listViewFormat(data, (int id) {
                  removePost(id);
                });
              } else if (snapshot.hasError) {
                return Container();
              }
              return Center(
                child: Container(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
        floatingActionButton: (FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            final result = await Navigator.pushNamed(context, '/addPost');
            if (result != null) {
              addPost(result);
            }
          },
        )),
      ),
    );
  }
}

ListView _listViewFormat(List<Post> data, void removePost(int id)) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _tile(data[index].id, data[index].title, data[index].body,
            (int id) {
          removePost(id);
        });
      });
}

ListTile _tile(int id, String title, String body, void removePost(int id)) {
  return ListTile(
    title: Text(title + " - " + id.toString(), style: TextStyle(fontSize: 20)),
    subtitle: Text(body),
    onTap: () {
      removePost(id);
    },
  );
}
