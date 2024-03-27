import 'package:get/get.dart';
import 'package:transferapp/core/constant/routs.dart';

import '../../core/functions/pointoprations.dart';
import 'showcontroller.dart';

class Indexcontroller extends GetxController {
  RxInt selectedid = 100.obs;
  RxList<dynamic> points = [].obs;
  void gotocreatepoint() {
    Get.toNamed(Approutes.createpoint);
  }

  void gotoshow(int id) {
    selectedid.value = id;
    try {
      Showpointcontroller showpointcontroller = Get.find();
      if (showpointcontroller.initialized) {
        showpointcontroller.onInit();
      }
    } catch (e) {
      print(e);
    }

    Get.toNamed(Approutes.showpoint);
  }

  void gotoedit(int id) {
    selectedid.value = id;
    Get.toNamed(Approutes.updatepoint);
  }

  @override
  void onInit() async {
    points.value = await Pointoprations.fetchdata(
        "http://192.168.1.10:9000/api/points",
        "LiEIUixU8gAMnePKro8eBKQsvOfqZDOsFj2GgFDUffe32c62");
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
