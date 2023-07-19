import 'package:flutter/material.dart';

import 'custom_clip.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello, Krasunia",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ClipPath(
          clipBehavior: Clip.antiAlias,
          clipper: CurvedNotchClipper(),
          child: Container(
            // color: Color(0xffF4F7FE),
            color: Colors.blueGrey,
            height: 70,
          ),
        ),
      )
    );
  }
}
