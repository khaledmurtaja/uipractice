import 'package:flutter/material.dart';

class Drawing extends StatelessWidget {
  const Drawing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff90F4C9),
        title: const Text(
          "Custom Painter example",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              width: double.infinity,
              height: 250,
              color: const Color(0xff90F4C9),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey,width: 10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                child: const Center(child: Text("press")),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    path.quadraticBezierTo(
        size.width / 4, size.height * 0.9, size.width / 2, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.5, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
