import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_page extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home_page({super.key});
  final int days = 30;
  final String name = "vivek";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Vivek"),
        ),
        body: Center(
          child: Text("welcome to $days of flutter by $name aa"),
        
        ),
        drawer: const Drawer(),
      );
  }
}
