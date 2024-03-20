import 'package:get/get.dart';
import 'package:transferapp/core/constant/routs.dart';

class Bottomnavicationbarcontroller extends GetxController {
  RxInt slectedindex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void changeindex(int index) {
    slectedindex.value = index;
    switch (slectedindex.value) {
      case 0:
        Get.toNamed(Approutes.home);
        break;
      case 1:
        Get.toNamed(Approutes.archiveindex);
        break;
      case 2:
        Get.toNamed(Approutes.pointindex);

        break;
      case 3:
        Get.toNamed(Approutes.userindex);
        break;
      default:
    }
    update();
  }
}
