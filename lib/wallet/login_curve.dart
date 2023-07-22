import 'package:flutter/material.dart';

class LoginCurve extends StatelessWidget {
  const LoginCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.orangeAccent,height: 350,),
          ClipPath(
            clipper: MyClipper(),
            child: SizedBox(
              height: 450,
              child: Container(
                color: Colors.black87,
                height: 450,
                width: double.infinity,
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.18),
                    child: const Text(
                      'Welcome\n back',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(0, size.height * 0.47);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.47,
        size.width * 0.2, size.width * 0.4);
    path.quadraticBezierTo(size.width * 0.2, size.width * 0.2, size.width * 0.5,
        size.height * 0.04);
    path.quadraticBezierTo(
        size.width * 0.88, size.height * 0.03, size.width, 0);
    path.lineTo(size.width, size.height * 0.15);
    path.cubicTo(size.width * 0.9, size.height * 0.18, size.width * 0.8,
        size.height * 0.3, size.width * 0.7, size.height * 0.45);
    // path.quadraticBezierTo(size.width*0.9, size.height*0.19, size.width*0.8, size.height*0.25);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.49,
        size.width * 0.65, size.height * 0.77);
    // path.quadraticBezierTo(size.width*0.5, size.height*0.5, size.width*0.6, size.height*0.7);
    path.quadraticBezierTo(
        size.width * 0.28, size.height, 0, size.height * 0.87);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
