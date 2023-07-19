import 'package:flutter/material.dart';

class CurvedNotchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width*0.36, 0);
    path.cubicTo(size.width*0.4, 0, size.width*0.5, size.height, size.width*0.5, size.height*0.6);
    path.cubicTo(size.width*0.5, size.height, size.width*0.6,0, size.width*0.64, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;


  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
