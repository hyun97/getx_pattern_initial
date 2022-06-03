import 'package:get/get.dart';

import '../controller/my_controller.dart';
import '../data/provider/my_api.dart';
import '../data/repository/my_repository.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() {
      return MyController(
        repository: MyRepository(apiClient: MyApi()),
      );
    });
  }
}
