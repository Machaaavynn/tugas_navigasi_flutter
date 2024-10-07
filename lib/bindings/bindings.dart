import 'package:get/get.dart';
import 'package:navigasi_buttom/controller/buttom_nav_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DhasboardController());
  }
}