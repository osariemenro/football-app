import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../sizing.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  Widget buildNavIcon(String iconUrl, bool color, bool isNotifi) {
    return Container(
        height: Sizing.customHeight(35),
        width: Sizing.customWidth(35),
        padding: EdgeInsets.all(Sizing.customHeight(6)),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: lightGrey,
              width: 1,
            )),
        child: !isNotifi ? Image.asset(iconUrl, color: color ? midLightGrey : Colors.black) : Stack(children: [
          Image.asset(iconUrl, color: color ? midLightGrey : Colors.black),
          Positioned(
            right: 1,
            top: 2,
            child: Container(
              height: Sizing.customHeight(7),
              width: Sizing.customWidth(7),
              decoration: const BoxDecoration(
                color: pryColor,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],)
        );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // menu and title
        Row(
          children: [
            // icon
            buildNavIcon('assets/icons/menu.png', false, false),
            Gap(Sizing.customWidth(10)),
            Text('Score Board', style: poppinsMid)
          ],
        ),

        // notification and search
        Row(children: [
          buildNavIcon('assets/icons/notification-bell.png', true, true),
          Gap(Sizing.customWidth(15)),
          buildNavIcon('assets/icons/search.png', true, false),
        ])
      ],
    );
  }
}
