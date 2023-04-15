import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../sizing.dart';

class TodayMatch extends StatelessWidget {
  const TodayMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Game league type icon
            Row(children: [
              Container(
                height: 27,
                child: Image.asset('assets/images/new-premier-league-logo.png'),
              ),
              Gap(Sizing.customWidth(6)),
              Text(
                'Today\'s Match',
                style: poppinsMid.copyWith(fontSize: 15),
              ),
            ]),

            GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 19,
                  color: Color.fromARGB(255, 77, 77, 77),
                ))
          ],
        ),
        Gap(Sizing.customHeight(17)),

        Match(
          clubName1: 'Watford',
          clubName2: 'West Ham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/watford.png',
          clubLogo2: 'assets/clubs/west-ham.png',
        ),
        Match(
          clubName1: 'Liverpool',
          clubName2: 'Tottenham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/liverpool.png',
          clubLogo2: 'assets/clubs/Spur.png',
        ),
        Match(
          clubName1: 'Watford',
          clubName2: 'West Ham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/watford.png',
          clubLogo2: 'assets/clubs/west-ham.png',
        ),
        Match(
          clubName1: 'Liverpool',
          clubName2: 'Tottenham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/liverpool.png',
          clubLogo2: 'assets/clubs/Spur.png',
        ),
        Match(
          clubName1: 'Watford',
          clubName2: 'West Ham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/watford.png',
          clubLogo2: 'assets/clubs/west-ham.png',
        ),
        Match(
          clubName1: 'Liverpool',
          clubName2: 'Tottenham',
          gameTime: '07:00',
          clubLogo1: 'assets/clubs/liverpool.png',
          clubLogo2: 'assets/clubs/Spur.png',
        ),
      ],
    );
  }
}

class Match extends StatefulWidget {
  final String clubName1;
  final String clubLogo1;
  final String clubName2;
  final String clubLogo2;
  final String gameTime;
  const Match(
      {super.key,
      required this.clubName1,
      required this.clubName2,
      required this.gameTime,
      required this.clubLogo1,
      required this.clubLogo2});

  @override
  State<Match> createState() => _MatchState();
}

class _MatchState extends State<Match> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Sizing.customHeight(6)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizing.customHeight(20)),
        child: Card(
          elevation: 0,
          child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Sizing.customHeight(15),
                  horizontal: Sizing.customHeight(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // club
                  Row(
                    children: [
                      Text(widget.clubName1, style: poppins13WhiteBG),
                      Gap(Sizing.customWidth(10)),
                      // club image
                      Container(
                        height: 30,
                        child: Image.asset(widget.clubLogo1),
                      )
                    ],
                  ),
                  // time
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Sizing.customHeight(1),
                        horizontal: Sizing.customHeight(6)),
                    decoration: BoxDecoration(
                        color: lightGreenColor,
                        borderRadius:
                            BorderRadius.circular(Sizing.customHeight(10)),
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        )),
                    child: Text(widget.gameTime,
                        style: poppins11WhiteGB.copyWith(color: greenColor)),
                  ),
                  // club
                  Row(
                    children: [
                      // club image
                      Container(
                        height: 30,
                        child: Image.asset(widget.clubLogo2),
                      ),
                      Gap(Sizing.customWidth(10)),
                      Text(widget.clubName2, style: poppins13WhiteBG),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
