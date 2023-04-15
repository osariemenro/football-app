import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';
import './team_lineup.dart';

class MatchInfo extends StatefulWidget {
  const MatchInfo({super.key});

  @override
  State<MatchInfo> createState() => _MatchInfoState();
}

class _MatchInfoState extends State<MatchInfo> {
  // match info
  List<Map> matchInfoHeading = [
    {
      'infoType': 'Stats',
      'activeState': false,
    },
    {
      'infoType': 'Summary',
      'activeState': false,
    },
    {
      'infoType': 'Linups',
      'activeState': false,
    },
    {
      'infoType': 'H2H',
      'activeState': false,
    },
    {
      'infoType': 'Table',
      'activeState': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // stats, summary, line up, H2H, Table
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: Sizing.customWidth(Sizing.sideSpacing)),
          child: Row(
              children: List.generate(matchInfoHeading.length, (index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Sizing.customHeight(6),
                      horizontal: Sizing.customHeight(12)),
                  margin: EdgeInsets.only(right: Sizing.customWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Sizing.customHeight(15)),
                      border:
                          Border.all(color: Color.fromARGB(255, 229, 229, 229))),
                  child: Text(matchInfoHeading[index]['infoType'],
                      style: poppins13WhiteBG.copyWith(
                          color: Color.fromARGB(255, 142, 141, 141)))),
            );
          })),
        ),
    
        Gap(Sizing.customHeight(35)),
    
        // information about teams
        // ---- Team formation ---- //
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: Sizing.customWidth(Sizing.sideSpacing)),
          child: TeamLineup(),
        ),
    
        Gap(Sizing.customHeight(25)),
    
        // ---- Team name ---- //
        Container(
           margin: EdgeInsets.symmetric(
              horizontal: Sizing.customWidth(Sizing.sideSpacing)),
          child: Column(
            children: [
              Text('Manager', style: poppins13WhiteBG.copyWith(fontWeight: FontWeight.w700)),
              Gap(Sizing.customHeight(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(text: 'Graham ', children: [
                    TextSpan(text: 'Potter', style: poppins11WhiteGB.copyWith(color: Color.fromARGB(255, 70, 70, 70)),),
                  ],
                  style: poppins10WhiteGB,
                  )),

                  RichText(text: TextSpan(text: 'E. ', children: [
                    TextSpan(text: 'Ten Hag', style: poppins11WhiteGB.copyWith(color: Color.fromARGB(255, 70, 70, 70)),),
                  ],
                  style: poppins10WhiteGB,
                  )),
                ]
              )
            ],
          ),
        ),

        Gap(Sizing.customHeight(15)),
    
        // Team lineups
        Text('Lineups', style: poppins13WhiteBG.copyWith(fontWeight: FontWeight.w700)),

        Gap(Sizing.customHeight(10)),

        Container(
           margin: EdgeInsets.symmetric(
              horizontal: Sizing.customWidth(Sizing.sideSpacing)),
          child: Column(children: List.generate(2, (index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Team A
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('1. Kepa', style: poppins10WhiteGB),
                  Text('ARRIZABALAGA', style: poppins11WhiteGB.copyWith(color: Color.fromARGB(255, 70, 70, 70))),
                  Gap(Sizing.customHeight(10)),
                ],),
            
                // Team B
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('1. Kepa', style: poppins10WhiteGB,),
                  Text('ARRIZABALAGA', style: poppins11WhiteGB.copyWith(color: Color.fromARGB(255, 70, 70, 70))),
                  Gap(Sizing.customHeight(10)),
                ],)
              ],
            );
          }),),
        )
      ]),
    );
  }
}
