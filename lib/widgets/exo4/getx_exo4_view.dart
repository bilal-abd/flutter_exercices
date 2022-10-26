import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'getx_exo4_controller.dart';

class GetxExo4View extends GetView<GetxExo4Controller> {
  const GetxExo4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Exo4",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.incrementCounter();
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Click Number : ${controller.count.value}",
                  style: const TextStyle(fontSize: 30),
                )),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(controller.wordList.length, (index) {
                  return Text("${controller.wordList[index]} ");
                }),
              ),
            )
          ],
        ));
  }
}
