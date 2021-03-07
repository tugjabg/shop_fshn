
import 'package:get/get.dart';
import 'package:shop_fshn/presentation/route/routes.dart';
import 'package:shop_fshn/presentation/views/detail/detail_page.dart';
import 'package:shop_fshn/presentation/views/home_page.dart';

class RouteLink{

  static final pages =[
    GetPage(
      name: Routes.home,
      page: () => HomePage()
    ),

    GetPage(
      name: Routes.details,
      page: () => DetailPage()
    )

  ];

}