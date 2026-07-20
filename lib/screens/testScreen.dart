import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube/controller/ChangeMyTextController.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChangeTextController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.msg.value)),
            TextButton(onPressed: (){
              controller.changetext();
            }, child:  Text("Super change")),

            Obx(()=> Text(("${controller.num.value}"))),
            IconButton(onPressed: (){controller.add();}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){controller.sub();}, icon: Icon(Icons.minimize_outlined))
          ],
        ),
      ),
    );
  }
}