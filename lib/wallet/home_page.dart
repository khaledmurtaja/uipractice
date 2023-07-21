import 'package:flutter/material.dart';

import 'custom_clip.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Hello, Krasunia",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
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
            color: Colors.blueGrey.shade100,
            height: 70,
            child: const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xff5776FF),
                    size: 28,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.list_alt,
                    size: 28,
                  ),
                  Spacer(),
                  Icon(Icons.notifications, size: 28),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.person,
                    size: 28,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: ClipOval(
          child: Container(
            color: const Color(0xff5776FF),
            child: Image.asset(
              'images/stock/arrow.jpeg',
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
