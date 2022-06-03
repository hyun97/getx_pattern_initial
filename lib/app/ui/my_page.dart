import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/my_controller.dart';

class MyPage extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.postList.length < 1
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.postList[index].title ?? 'a'),
                    subtitle: Text(controller.postList[index].body ?? 'b'),
                  );
                },
                itemCount: controller.postList.length),
      ),
    );
  }
}
