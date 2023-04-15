import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  List selectedCalenderColor = [
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
    {
      'containerColor': pryColor,
      'dayColor': poppins11BlackBG,
      'dateNum': poppins13BlackBG,
    },
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
    {
      'containerColor': null,
      'dayColor': poppins11WhiteGB,
      'dateNum': poppins13WhiteBG,
    },
  ];

  Widget buildCalendarDay(index, containerColor, textStyle1, textStyle2) {
    return InkWell(
      onTap: () {
        // Take data with the index and set it to true, while others to false
        // clicked state = true
      },
      child: Container(
        width: Sizing.screenWidth() * .1,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(Sizing.customHeight(15))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Mon', style: textStyle1),
              Gap(Sizing.customHeight(3)),
              Text('22', style: textStyle2)
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        child: Column(children: [
          // Date selected
          Row(children: [
            SizedBox(
              height: 17,
              child: Image.asset('assets/icons/calendar-inactive.png'),
            ),
            Gap(Sizing.customWidth(7)),
            Text('Oct 17, 2022', style: poppins13WhiteBG)
            // data
          ]),
    
          Gap(Sizing.customHeight(7)),
    
          // date picker
          Container(
            height: Sizing.screenHeight() * .06,
            padding: EdgeInsets.only(left: Sizing.customWidth(19)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                7,
                (index) {
                  return buildCalendarDay(
                      index,
                      selectedCalenderColor[index]['containerColor'],
                      selectedCalenderColor[index]['dayColor'],
                      selectedCalenderColor[index]['dateNum']);
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
