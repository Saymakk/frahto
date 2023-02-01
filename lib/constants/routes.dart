import 'package:frahto/ui/screens/auth_screen/auth_screen.dart';
import 'package:frahto/ui/screens/init_screen/init_screen.dart';
import 'package:frahto/ui/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';

import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_eight/order_create_screen_eight.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_five/order_create_screen_five.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_four/order_create_screen_four.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_one/order_create_screen_one.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_seven/order_create_screen_seven.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_six/order_create_screen_six.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_three/order_create_screen_three.dart';
import '../ui/screens/main_screens/main_screen/order_create_screens/order_create_screen_two/order_create_screen_two.dart';
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
        name: '/orsone',
        page: () => const ORSOne(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/navbar',
        page: () => const BottomNavBar(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orstwo',
        page: () => const ORSTwo(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orsthree',
        page: () => const ORSThree(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orsfour',
        page: () => const ORSFour(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orsfive',
        page: () => const ORSFive(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orssix',
        page: () => const ORSSix(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orsseven',
        page: () => const ORSSeven(),
        transition: Transition.rightToLeft),
    GetPage(
        name: '/orseight',
        page: () => const ORSEight(),
        transition: Transition.rightToLeft),
  ];
}
