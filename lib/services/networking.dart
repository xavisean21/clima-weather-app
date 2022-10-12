import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(
       url));
    if (response.statusCode == 200) {
      String data = response.body;
      var output = jsonDecode(data);
      return output;
    } else {
      print(response.statusCode);
    }
  }
}