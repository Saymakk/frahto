import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/screens/main_screens/main_screen/main_screen.dart';
import 'package:frahto/ui/screens/main_screens/notifications_screen/notifications_screen.dart';
import 'package:frahto/ui/screens/main_screens/orders_screen/orders_screen.dart';
import 'package:frahto/ui/screens/main_screens/profile_screen/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Style.inactiveGreyBG, width: 1.5)
            ),
          ),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: nav_destionations_buttons,
            backgroundColor: Colors.white,
          ),
        ),
        body: nav_destionations[currentPageIndex],
      ),
    );
  }

  List<Widget> nav_destionations_buttons = [
    NavigationDestination(
      selectedIcon: SvgPicture.asset(
        '${Assets.icn}main.svg',
        color: Style.mainPurple,
      ),
      icon: SvgPicture.asset(
        '${Assets.icn}main.svg',
        color: Style.inactiveGreyText,
      ),
      label: 'Главная',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(
        '${Assets.icn}notifications.svg',
        color: Style.mainPurple,
      ),
      icon: SvgPicture.asset(
        '${Assets.icn}notifications.svg',
        color: Style.inactiveGreyText,
      ),
      label: 'Уведомления',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(
        '${Assets.icn}orders.svg',
        color: Style.mainPurple,
      ),
      icon: SvgPicture.asset(
        '${Assets.icn}orders.svg',
        color: Style.inactiveGreyText,
      ),
      label: 'Заказы',
    ),
    NavigationDestination(
      selectedIcon: SvgPicture.asset(
        '${Assets.icn}profile.svg',
        color: Style.mainPurple,
      ),
      icon: SvgPicture.asset(
        '${Assets.icn}profile.svg',
        color: Style.inactiveGreyText,
      ),
      label: 'Профиль',
    ),
  ];
  List<Widget> nav_destionations = [
    const MainScreen(),
    const NotificationsScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];
}
