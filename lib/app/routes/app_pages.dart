import 'package:get/get.dart';

import 'package:alquran_app/app/modules/home/bindings/home_binding.dart';
import 'package:alquran_app/app/modules/home/views/home_view.dart';
// import 'package:alquran_app/app/modules/introduction/bindings/introduction_binding.dart';
// import 'package:alquran_app/app/modules/introduction/views/introduction_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.INTRODUCTION,
    //   // page: () => IntroductionView(),
    //   // binding: IntroductionBinding(),
    // ),
  ];
}
