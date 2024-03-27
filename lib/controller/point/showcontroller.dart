import 'package:get/get.dart';

import '../../data/model/point.dart';
import 'indexcontroller.dart';

class Showpointcontroller extends GetxController {
  Indexcontroller indexcontroller = Get.find();
  RxInt id = 100.obs;

  late Point point;
  @override
  void onInit() {
    id.value = indexcontroller.selectedid.value;
    point = indexcontroller.points[id.value];
    print(point.id);
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
