import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';
import 'football_field.dart';

class TeamLineup extends StatelessWidget {
  const TeamLineup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // team logo
                Container(
                    height: Sizing.customHeight(30),
                    child: Image.asset('assets/clubs/chelsea.png')),
                Gap(Sizing.customWidth(8)),
                // Team name and formation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chelsea',
                      style: poppins11WhiteGB.copyWith(color: Colors.black),
                    ),
                    Text('3-4-2-1', style: poppins10WhiteGB)
                  ],
                )
              ],
            ),
            Row(
              children: [
                // Team name and formation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Man United',
                      style: poppins11WhiteGB.copyWith(color: Colors.black),
                    ),
                    Text('4-1-4-1', style: poppins10WhiteGB)
                  ],
                ),

                Gap(Sizing.customWidth(8)),

                // team logo
                Container(
                    height: Sizing.customHeight(30),
                    child: Image.asset('assets/clubs/man-utd.png')),
              ],
            )
          ],
        ),

        Gap(Sizing.customWidth(20)),
        // fooball field - formation
        FieldFormation(teamFormation: Row())
      ],
    );
  }
}
