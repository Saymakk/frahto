import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/screens/main_screens/main_screen/main_screen.dart';
import 'package:frahto/ui/screens/main_screens/notifications_screen/notifications_screen.dart';
import 'package:frahto/ui/screens/main_screens/profile_screen/orders/orders_screen.dart';
import 'package:frahto/ui/screens/main_screens/profile_screen/profile_screen.dart';
import 'package:frahto/ui/widgets/widgets.dart';

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
      selectedIcon: SWidgets().svg('main', Style.mainPurple),
      icon: SWidgets().svg('main', Style.inactiveGreyText),
      label: 'Главная',
    ),
    NavigationDestination(
      selectedIcon: SWidgets().svg('notifications', Style.mainPurple),
      icon: SWidgets().svg('notifications', Style.inactiveGreyText),
      label: 'Уведомления',
    ),
    NavigationDestination(
      selectedIcon: SWidgets().svg('orders', Style.mainPurple),
      icon: SWidgets().svg('orders', Style.inactiveGreyText),
      label: 'Заказы',
    ),
    NavigationDestination(
      selectedIcon: SWidgets().svg('profile', Style.mainPurple),
      icon: SWidgets().svg('profile', Style.inactiveGreyText),
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
