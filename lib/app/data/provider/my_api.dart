import 'dart:convert';

import 'package:get/get.dart';

import '../model/my_model.dart';

class MyApi extends GetConnect {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  getAll() async {
    try {
      var response = await get(url);
      if (response.statusCode != 200) {
        throw Exception();
      }
      List<dynamic> jsonResponse = jsonDecode(response.bodyString!);
      List<MyModel> listMyModel = jsonResponse.map((json) => MyModel.fromJson(json)).toList();
      return listMyModel;
    } catch (e) {
      print(e);
    }
  }
}
