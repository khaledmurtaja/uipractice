import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'helper_functions.dart';

class HabitsPage extends StatefulWidget {
  const HabitsPage({Key? key}) : super(key: key);

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF)),
                    child: SvgPicture.asset(
                      'images/habitsTracker/Calendar.svg',
                      height: 40,
                      width: 40,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF)),
                    child: SvgPicture.asset(
                      "images/habitsTracker/notification.svg",
                      fit: BoxFit.scaleDown,
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Mert 👋',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Let’s make habits together!',
                        style:
                            TextStyle(color: Color(0xff9B9BA1), fontSize: 16),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffDDF2FC)),
                    child: const Center(
                      child: Text(
                        '😇',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffEAECF0),
                ),
                child: TabBar(
                    onTap: (selectedItemIndex) {
                      //print(selectedItemIndex);
                    },
                    controller: TabController(length: 2, vsync: this),
                    unselectedLabelColor: Colors.black26,
                    labelColor: const Color(0xff6B73FF),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF)),
                    tabs: const [
                      Text(
                        "Today",
                        style: TextStyle(color: Colors.black87),
                      ),
                      Text("Clubs")
                    ]),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
