import 'package:get/get.dart';
import 'package:petro/app/data/provider/home_provider.dart';
import 'package:petro/app/modules/home_module/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        provider: HomeProvider(),
      ),
    );
  }
}
