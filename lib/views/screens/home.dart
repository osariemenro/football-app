import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/top_bar.dart';
import '../widgets/calendar.dart';
import '../../sizing.dart';
import '../widgets/live_match_card.dart';
import '../widgets/today_match.dart';

class Home extends StatelessWidget {
  Home({super.key});
  late double topBarHeight;
  late double bottomBarHeight;

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizing.screenHeight(),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        print('${constraints.maxHeight} ----- ');
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // top bar nav
          // date
          Container(
            color: Colors.white,
            height: constraints.maxHeight * .28,
            padding: EdgeInsets.only(
              top: Sizing.resolution(context).viewPadding.top + 10,
              left: Sizing.customWidth(Sizing.sideSpacing),
              right: Sizing.customWidth(Sizing.sideSpacing),
              bottom: Sizing.customWidth(15),
            ),
            child: Column(children: [
              // Top navigation
              TopBar(),
              Gap(Sizing.customHeight(18)),
              Calendar()
            ]),
          ),

          // scrollable
          SizedBox(
            height: constraints.maxHeight - (constraints.maxHeight * .28),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Gap(Sizing.customHeight(15)),

                  // Live match
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizing.customWidth(Sizing.sideSpacing)),
                    child: LiveMatch(),
                  ),

                  // Today's match
                  Gap(Sizing.customHeight(25)),

                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizing.customWidth(Sizing.sideSpacing)),
                    child: TodayMatch(),
                  )
                ],
              ),
            ),
          )
        ]);
      }),
    );
  }
}
