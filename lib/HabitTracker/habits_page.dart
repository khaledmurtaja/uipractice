import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HabitsPage extends StatelessWidget {
  const HabitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('images/habitsTracker/Calendar.svg'),
              SvgPicture.asset("")
            ],

          )
        ],
      ),

    );
  }
}
