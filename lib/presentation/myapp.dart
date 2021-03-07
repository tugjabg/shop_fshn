import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_fshn/presentation/route/route_link.dart';
import 'package:shop_fshn/presentation/views/home_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: RouteLink.pages,
    );
  }
}