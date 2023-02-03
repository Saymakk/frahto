import 'package:flutter/material.dart';
import 'package:frahto/ui/screens/main_screens/profile_screen/orders/current_orders_screen/current_orders_screen.dart';
import 'package:frahto/ui/screens/main_screens/profile_screen/orders/orders_history_screen/orders_history_screen.dart';
import 'package:get/get.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  int page_index = 1;
  bool visible = false;

  @override
  void initState() {
    super.initState();
    if (Get.arguments != null) {
      setState(() {
        page_index = int.parse(Get.arguments[0]);
        visible = true;
      });
    }
    tabController = TabController(
      initialIndex: page_index,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    print(Get.previousRoute.toString() + ' prev');

    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: Visibility(
            visible: visible,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: tabController,
            tabs: [
              Tab(
                text: 'Архивные',
              ),
              Tab(
                text: 'Текущие',
              ),
            ],
          ),
        ),
        body: TabBarView(controller: tabController, children: [
          OHScreen(),
          COScreen(),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
