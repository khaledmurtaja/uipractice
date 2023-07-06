import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmotionFace extends StatelessWidget {
  String emotionFace;
  String emotionText;
  EmotionFace(
      {super.key, required this.emotionFace, required this.emotionText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[600]),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                emotionFace,
                style: TextStyle(fontSize: 25.spMin),
              ),
            )),
        SizedBox(
          height: 10.h,
        ),
        Text(
          emotionText,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
