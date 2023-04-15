import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';
import './card.dart';

class LiveMatch extends StatefulWidget {
  const LiveMatch({super.key});
  
  @override
  State<LiveMatch> createState() => _LiveMatchState();
}

class _LiveMatchState extends State<LiveMatch> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Text
      Text(
        'Live Match',
        style: poppinsMid,
      ),
      Gap(Sizing.customHeight(15)),

      // Card
      GameCard(),
    ]);
  }
}
