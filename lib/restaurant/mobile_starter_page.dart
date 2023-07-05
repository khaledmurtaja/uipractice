import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileStarterPage extends StatelessWidget {
  const MobileStarterPage({Key? key}) : super(key: key);

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
          fit: BoxFit.fitHeight,
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
          top: deviceHeight * 0.63,
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "See restaurants nearby by\nadding your location",
              style: TextStyle(color: Colors.white, fontSize: 18, height: 1.4),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            height: deviceHeight * 0.25,
            width: deviceWidth,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 50.h,
                    width: deviceWidth * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient:  LinearGradient(
                            colors: [Colors.yellow.shade400, Colors.orange])),
                    child: const Center(
                      child: Text(
                        "Start",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Text(
                    "Now Deliver To Your Door 24/7",
                  style: TextStyle(color: Colors.grey.shade400),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
