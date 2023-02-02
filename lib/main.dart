import 'package:flutter/material.dart';
import 'package:frahto/constants/routes.dart';
import 'package:frahto/ui/screens/init_screen/init_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:oktoast/oktoast.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: GetMaterialApp(
        initialRoute: '/navbar',
        getPages: Routes.route_list,
        debugShowCheckedModeBanner: false,
        home: const InitScreen(),
      ),
    );
  }
}
