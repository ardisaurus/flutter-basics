import 'package:consume_api/models/Posts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Post>> fetchPost() async {
  var response = await http
      .get('https://jsonplaceholder.typicode.com/posts?_start=0&_limit=5');

  if (response.statusCode == 200) {
    return List<Post>.from(
        json.decode(response.body).map((x) => Post.fromJson(x)));
  } else {
    throw Exception('Failed to load posts');
  }
}

Future<Post> createPost(Post post) async {
  final http.Response response = await http.post(
    'https://jsonplaceholder.typicode.com/posts',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'userId': post.userId,
      'id': post.id,
      'title': post.title,
      'body': post.body,
    }),
  );
  if (response.statusCode == 201) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create posts.');
  }
}

Future<Post> deletePost(int id) async {
  final http.Response response = await http.delete(
    'https://jsonplaceholder.typicode.com/posts/$id',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to delete posts.');
  }
}
