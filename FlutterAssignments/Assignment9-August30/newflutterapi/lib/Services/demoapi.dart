
// import 'package:http/http.dart' as http;

import 'package:http/http.dart'as http;

import '../Models/sampledata.dart';
import '../Models/sampledata1.dart';


class DemoapiClass {
  
  Future apicall() async {
    http.Response response = await http.get(Uri.parse(
        "https://simple-books-api.glitch.me/books?type=fiction&limit=20"));
    if (response.statusCode == 200) {
     return  sampledataFromJson(response.body);
    } 
  }
  
  Future apicall1(int id) async{
    http.Response response = await http.get(Uri.parse(
        "https://simple-books-api.glitch.me/books/$id"));
        print(response.statusCode);
    if (response.statusCode == 200) {
     return  sampleData1FromJson(response.body);

    } 
  }

}
