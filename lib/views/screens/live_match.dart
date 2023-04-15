import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../sizing.dart';
import '../../constants.dart';
import '../widgets/white_card.dart';
import '../widgets/match_info.dart';

class LiveGameScreen extends StatelessWidget {
  const LiveGameScreen({super.key});

  static const routeName = '/live-match';

  @override
  Widget build(BuildContext context) {
    print(Sizing.screenHeight() * .3);
    return Scaffold(
      body: Container(
        height: Sizing.screenHeight(),
        child: Column( 
          children: [
            SizedBox(
              // height: Sizing.screenHeight() * .44,
              child: Stack(
                children: [
                  // container - league logo - navigation bar
                  Stack(
                    children: [
                      Container(
                        height: Sizing.screenHeight() * .28,
                        decoration: BoxDecoration(
                          color: secColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(Sizing.customHeight(20)),
                              bottomRight:
                                  Radius.circular(Sizing.customHeight(20))),
                        ),
                      ),
                      Positioned(
                        right: -12,
                        bottom: 0,
                        child: SizedBox(
                          height: 230,
                          child:
                              Image.asset('assets/images/premier-league-0.png'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top:
                                Sizing.resolution(context).viewPadding.top + 10,
                            left: Sizing.customWidth(Sizing.sideSpacing),
                            right: Sizing.customWidth(Sizing.sideSpacing)),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // back btn
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: Sizing.customHeight(35),
                                  width: Sizing.customWidth(35),
                                  padding:
                                      EdgeInsets.all(Sizing.customHeight(8)),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: lighterGrey,
                                  ),
                                  child: Image.asset(
                                      'assets/icons/left-arrow.png',
                                      color: Colors.white),
                                ),
                              ),
                              // page title
                              Text('Premier League',
                                  style: poppinsPageTitle.copyWith(
                                      color: Colors.white)),
                              // menu
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: Sizing.customHeight(35),
                                  width: Sizing.customWidth(35),
                                  padding:
                                      EdgeInsets.all(Sizing.customHeight(3)),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: lighterGrey,
                                  ),
                                  child: Image.asset('assets/icons/menu-2.png',
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  // card
                  Container(
                    padding: EdgeInsets.only(
                        top: Sizing.resolution(context).viewPadding.top +
                            Sizing.customHeight(70),
                        left: Sizing.customWidth(Sizing.sideSpacing),
                        right: Sizing.customWidth(Sizing.sideSpacing)),
                    child: PlaneCard(),
                  )
                ],
              ),
            ),

            Gap(Sizing.customHeight(39)),
            // about the teams
            Container(
              // height: Sizing.screenHeight() ,
              // TODO: Create an height here
              child: Column(
                children: [
                  // Gap(Sizing.customHeight(25)),
                  MatchInfo(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
