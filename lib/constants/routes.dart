import 'package:frahto/ui/screens/auth_screen/auth_screen.dart';
import 'package:frahto/ui/screens/init_screen/init_screen.dart';
import 'package:frahto/ui/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';

import '../ui/screens/reg_screen/reg_screen_cd/reg_screen_cd.dart';
import '../ui/screens/reg_screen/reg_screen_ud/reg_screen_ud.dart';
import '../ui/screens/sms_screen/sms_screen.dart';

class Routes {
  static List<GetPage> route_list = [
    GetPage(
        name: '/',
        page: () => const InitScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/auth',
        page: () => const AuthScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/sms',
        page: () => const SMSScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/regcd',
        page: () => const RegCompanyData(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/regud',
        page: () => const RegUserData(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/navbar',
        page: () => const BottomNavBar(),
        transition: Transition.rightToLeft),
  ];
}
