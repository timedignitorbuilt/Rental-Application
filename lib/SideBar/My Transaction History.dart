import 'package:flutter/material.dart';
class MyTransaction extends StatefulWidget {
  const MyTransaction({super.key});

  @override
  State<MyTransaction> createState() => _MyTransactionState();
}

class _MyTransactionState extends State<MyTransaction> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("My Transaction History",)),
    );
  }
}