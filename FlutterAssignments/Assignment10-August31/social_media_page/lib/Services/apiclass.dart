import 'package:http/http.dart' as http;

import '../Models/add_post.dart';
import '../Models/get_all.dart';
import '../Models/get_comments.dart';
import '../Models/get_single.dart';
import '../Models/update_post.dart';

class ApiClass {
  Future getallapicall() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (response.statusCode == 200) {
      return getAllFromJson(response.body);
    }
  }

  Future getsingleapicall(int postid) async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/$postid"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return getSingleFromJson(response.body);
    }
  }

  Future getcommentsapicall(int postid) async {
    http.Response response = await http.get(Uri.parse(
        "https://jsonplaceholder.typicode.com/posts/$postid/comments"));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return getCommentsFromJson(response.body);
    }
  }

  Future addpostapicall(String userid,String title,String body) async {
    http.Response response =
        await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"), body: {
          "id": userid,
          "title":title ,
          "body":body
        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      return addPostFromJson(response.body);
    }
  }

  Future updatepostapicall(int postid,String title,String body) async {
    http.Response response = await http.put(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/$postid"),
        body: {
          "id": postid.toString(),
          "title":title ,
          "body":body
        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      return updatePostFromJson(response.body);
    }
  }
}
