import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class APIService{
  static String url = 'https://localhost:44378/api/studentdata';

  static Future fetchStudent() async{
    return await http.get(url);
  }
}