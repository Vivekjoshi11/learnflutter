import 'package:flutter/material.dart';
import 'package:learnflutter/widgets/drawer.dart';

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
          backgroundColor: Colors.white,
          title: const Text("Vivek's Catalog App"),
        ),
        // body: Center(
        //   child: Text("welcome to $days of flutter by $name aa"),
        
        // ),
        body: Container(
          //from constraints the children will follow the instruction from that 
         constraints: const BoxConstraints(
          minHeight: 70,
          maxHeight: 200,
          minWidth: 70,
          maxWidth: 200
         ),
         height: 400,
         width: 400,
         color: Colors.green,
         // it will follow the size of container and container enforcde the child to be the size that is why it is not visible green color
            child: Container(
              height: 400,
              width: 400,
              color: Colors.red,
            )
          
        ),
        drawer: const MyDrawer(),
      );
  } 
}
