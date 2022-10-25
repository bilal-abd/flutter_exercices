import 'package:get/get.dart';

class GetxExo4Controller extends GetxController {
  GetxExo4Controller();
  Rx<int> count = 0.obs;
  RxList<String> wordList = ["mot1", "mot2", "mot3"].obs;

  void addWordToList() {
    wordList.add('worddd');
  }

  void incrementCounter() {
    count.value++;
  }
}
