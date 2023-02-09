import 'package:flutter/material.dart';
import 'package:frahto/constants/routes.dart';
import 'package:frahto/ui/screens/init_screen/init_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:oktoast/oktoast.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() async {
  AndroidYandexMap.useAndroidViewSurface = false;
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
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedLabelStyle: GoogleFonts.inter(),
            unselectedLabelStyle: GoogleFonts.inter(),
          ),
          // fontFamily: 'inter',
          useMaterial3: true,
        ),
        initialRoute: '/',
        getPages: Routes.route_list,
        debugShowCheckedModeBanner: false,
        home: const InitScreen(),
      ),
    );
  }
}
