import 'package:flutter_application_1/widgets/exo4/getx_exo4_controller.dart';
import 'package:get/get.dart';

class GetxExo4Bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetxExo4Controller());
  }
}
