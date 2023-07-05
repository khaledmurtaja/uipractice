import 'package:flutter/material.dart';
import 'package:uipractice/restaurant/tablet_starter_page.dart';

import 'mobile_starter_page.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 550) {
        return const MobileStarterPage();
      } else {
        return const TabletStarterPage();
      }
    });
  }
}
