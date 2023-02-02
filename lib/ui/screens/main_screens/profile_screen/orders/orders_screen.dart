import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: Visibility(
            visible: false,
            child: Icon(Icons.add),
          ),
          bottom: TabBar(tabs: [
            Tab(text: 'asd',),
            Tab(text: 'asdacx',),
          ],),
        ),
        body: TabBarView(
            // controller: tabbarController,
            children: [
          Text('data'),
          Text('data'),
        ]),
      ),
    );
  }
}
