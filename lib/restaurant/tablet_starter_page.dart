import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletStarterPage extends StatelessWidget {
  const TabletStarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "images/restaurant/starter-image.jpg",
          width: double.infinity,
          fit: BoxFit.fitWidth,
          height: deviceHeight,
        ),
         Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Taking Order\nFor Faster\nDelivery",
              style: TextStyle(
                  fontSize: 50.spMin,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          top: deviceHeight * 0.5,
          left: deviceWidth*0.57,
          child:  Padding(
            padding: EdgeInsets.only(left: 20.w),
            child:  Text(
              "See restaurants nearby by\nadding your location",
              style: TextStyle(color: Colors.white, fontSize: 18.spMin, height: 1.4.h,fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height: 50.h,
                width: deviceHeight * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [Colors.yellow.shade400, Colors.orange])),
                child: const Center(
                  child: Text(
                    "Start",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 30.h,
            ),
            const Text(
              "Now Deliver To Your Door 24/7",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ));
  }
}
