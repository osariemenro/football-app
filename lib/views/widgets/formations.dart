import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';

class Player extends StatelessWidget {
  final Color color;
  final playerNum;
  const Player({super.key, required this.color, required this.playerNum});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizing.customWidth(18),
      height: Sizing.customHeight(18),
      alignment:Alignment.center,
      decoration:
          BoxDecoration(color: color, shape: BoxShape.circle, boxShadow: const [
        BoxShadow(
            // spreadRadius: 1,
            // blurRadius: 1,
            ),
      ]),
      child: Text('$playerNum',
          style: poppins10WhiteGB.copyWith(color: Colors.white, fontSize: 8)),
    );
  }
}

class Formation_3_4_2_1 extends StatelessWidget {
  const Formation_3_4_2_1({super.key});
  static Color color = Color(0xFF304A83);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // keeper
        Player(
          color: color,
          playerNum: 1,
        ),
        // line 2
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 32,
            ),
            Player(
              color: color,
              playerNum: 6,
            ),
            Player(
              color: color,
              playerNum: 14,
            ),
          ],
        ),
        // line 3
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 21,
            ),
            Player(
              color: color,
              playerNum: 12,
            ),
            Player(
              color: color,
              playerNum: 5,
            ),
            Player(
              color: color,
              playerNum: 28,
            ),
          ],
        ),
        // line 4
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 17,
            ),
            Player(
              color: color,
              playerNum: 19,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 9,
            ),
          ],
        ),
      ],
    );
  }
}


class Formation_4_1_4_1 extends StatelessWidget {
  const Formation_4_1_4_1({super.key});
  static Color color = Color(0xFFC13034);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // keeper
        Player(
          color: color,
          playerNum: 1,
        ),
        // line 2
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
          ],
        ),
        // line 3
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
          ],
        ),
        // line 4
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 1,
            ),
            Player(
              color: color,
              playerNum: 1,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Player(
              color: color,
              playerNum: 1,
            ),
          ],
        ),
      ],
    );
  }
}

