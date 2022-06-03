import 'package:get/get.dart';

import '../data/model/my_model.dart';
import '../data/repository/my_repository.dart';

class MyController extends GetxController {
  final MyRepository repository;
  final _postsList = <MyModel>[].obs;

  MyController({required this.repository});

  get postList => _postsList.value;
  set postList(value) => _postsList.value = value;

  @override
  void onInit() async => await getAll();

  getAll() async {
    return await repository.getAll().then((data) {
      postList = data;
    });
  }
}
