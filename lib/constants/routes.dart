import 'package:frahto/ui/screens/auth_screen/auth_screen.dart';
import 'package:frahto/ui/screens/init_screen/init_screen.dart';
import 'package:get/get.dart';

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
  ];
}
