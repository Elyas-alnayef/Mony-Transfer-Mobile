import 'package:get/get.dart';

class Bottomnavicationbarcontroller extends GetxController {
  RxInt slectedindex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void changeindex(int index) {
    slectedindex.value = index;

    update();
  }
}
