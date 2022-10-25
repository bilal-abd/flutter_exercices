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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.incrementCounter();
          },
        ),
        body: Center(
          child: Column(
            children: [
              Obx(() => Text(
                  "Nbre de fois que 'jai cliqué : ${controller.count.value}")),
              Obx(
                () => Row(
                  children: List.generate(controller.wordList.length, (index) {
                    return Text(controller.wordList[index]);
                  }),
                ),
              )
            ],
          ),
        ));
  }
}
