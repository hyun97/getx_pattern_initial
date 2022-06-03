import 'package:get/get.dart';
import 'package:getx_pattern_initial/app/binding/my_binding.dart';
import 'package:getx_pattern_initial/app/routes/app_routes.dart';
import 'package:getx_pattern_initial/app/ui/my_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.INITIAL, page: () => MyPage(), binding: MyBinding()),
    // GetPage(name: AppRoutes.DETAILS, page: () => DetailsPage(), binding: DetailsBinding()),
  ];
}
