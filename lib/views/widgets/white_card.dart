import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';

class PlaneCard extends StatefulWidget {
  const PlaneCard({super.key});

  @override
  State<PlaneCard> createState() => _PlaneCardState();
}

class _PlaneCardState extends State<PlaneCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: Sizing.customWidth(25)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Sizing.customHeight(20)),
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                // stadium name
                Text(
                  'Stampford Bridge',
                  style: poppins13WhiteBG,
                ),
                Gap(Sizing.customHeight(4)),
                // week
                Text('Week 6',
                    style: poppins11WhiteGB.copyWith(
                        color: Color.fromARGB(255, 142, 141, 141)))
              ],
            ),

            Gap(Sizing.customHeight(10)),

            // club and score
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    style: poppins13WhiteBG,
                  ),
                  Text('Home',
                      style: poppins11WhiteGB.copyWith(
                          color: Color.fromARGB(255, 142, 141, 141)))
                ],
              ),

              // Score

              Column(
                children: [
                  Row(
                    children: [
                      // club A score
                      Text('1', style: poppinsScore.copyWith(color: Colors.black)),
                      Gap(Sizing.customWidth(6)),
                      Text(':', style: poppinsScore.copyWith(color: Colors.black)),
                      Gap(Sizing.customWidth(6)),
                      // club B score
                      Text('1', style: poppinsScore.copyWith(color: Colors.black))
                    ],
                  ),
                  Gap(Sizing.customHeight(5)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Sizing.customHeight(1),
                        horizontal: Sizing.customHeight(6)),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEEFBF2),
                        borderRadius:
                            BorderRadius.circular(Sizing.customHeight(10)),
                        border: Border.all(
                          width: 1,
                          color: greenColor,
                        )),
                    child: Text('90+4',
                        style: poppins11WhiteGB.copyWith(color: greenColor)),
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
                    style: poppins13WhiteBG,
                  ),
                  Text('Away',
                      style: poppins11WhiteGB.copyWith(
                          color: Color.fromARGB(255, 142, 141, 141)))
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
