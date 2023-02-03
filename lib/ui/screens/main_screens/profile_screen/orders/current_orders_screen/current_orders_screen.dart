import 'package:flutter/material.dart';

class COScreen extends StatefulWidget {
  const COScreen({Key? key}) : super(key: key);

  @override
  State<COScreen> createState() => _COScreenState();
}

class _COScreenState extends State<COScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('ТЕКУЩИЕ ЗАКАЗЫ'),),);
  }
}
