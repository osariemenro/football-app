import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';
import '../screens/live_match.dart';

class GameCard extends StatefulWidget {
  const GameCard({super.key});

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  void visitPage(page) {
    Navigator.of(context).pushNamed(page);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        visitPage(LiveGameScreen.routeName);
      },
      child: Column(
        children: [
          Stack(children: [
            Container(
                height: Sizing.customHeight(180),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secColor,
                  borderRadius: BorderRadius.circular(Sizing.customHeight(20)),
                )),
            Positioned(
              right: -15,
              top: 10,
              child: Container(
                height: 180,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizing.customHeight(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(Sizing.customHeight(20)),
                  ),
                  child: Image.asset(
                    'assets/images/premier-league-0.png',
                    color: secLightColor,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 30,
              right: 30,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        // stadium name
                        Text(
                          'Stampford Bridge',
                          style: poppins13WhiteBG.copyWith(color: Colors.white),
                        ),
                        Gap(Sizing.customHeight(4)),
                        // week
                        Text('Week 6',
                            style: poppins11WhiteGB.copyWith(
                                color: Color.fromARGB(255, 173, 173, 173)))
                      ],
                    ),

                    Gap(Sizing.customHeight(10)),

                    // club and score
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              // Club logo
                              Container(
                                height: 60,
                                child: Image.asset('assets/clubs/chelsea.png'),
                              ),
                              Gap(Sizing.customHeight(10)),
                              Text(
                                'Chelsea',
                                style: poppins13WhiteBG.copyWith(
                                    color: Colors.white),
                              ),
                              Text('Home',
                                  style: poppins11WhiteGB.copyWith(
                                      color:
                                          Color.fromARGB(255, 173, 173, 173)))
                            ],
                          ),

                          // Score

                          Column(
                            children: [
                              Row(
                                children: [
                                  // club A score
                                  Text('1', style: poppinsScore),
                                  Gap(Sizing.customWidth(6)),
                                  Text(':', style: poppinsScore),
                                  Gap(Sizing.customWidth(6)),
                                  // club B score
                                  Text('1', style: poppinsScore)
                                ],
                              ),
                              Gap(Sizing.customHeight(5)),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: Sizing.customHeight(1),
                                    horizontal: Sizing.customHeight(6)),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF43354D),
                                    borderRadius: BorderRadius.circular(
                                        Sizing.customHeight(10)),
                                    border: Border.all(
                                      width: 1,
                                      color: greenColor,
                                    )),
                                child: Text('90+4',
                                    style: poppins11WhiteGB.copyWith(
                                        color: greenColor)),
                              )
                            ],
                          ),

                          Column(
                            children: [
                              // Club logo
                              Container(
                                height: 60,
                                child: Image.asset('assets/clubs/man-utd.png'),
                              ),
                              Gap(Sizing.customHeight(10)),
                              Text(
                                'Man Utd',
                                style: poppins13WhiteBG.copyWith(
                                    color: Colors.white),
                              ),
                              Text('Away',
                                  style: poppins11WhiteGB.copyWith(
                                      color:
                                          Color.fromARGB(255, 173, 173, 173)))
                            ],
                          ),
                        ])
                  ],
                ),
              ),
            ),
          ]),

          // TODO: Create a bottom blur for the card
          // custom shadow
          // Stack(
          //   children: [
          //     Container(
          //       height: Sizing.customHeight(20),
          //       width: Sizing.screenWidth() * .7,
          //       color: secLightColor,
          //     ),
          //     BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //       child: Container(
          //         height: Sizing.customHeight(20),
          //         width: Sizing.screenWidth() * .7,
          //         color: secLightColor,
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
