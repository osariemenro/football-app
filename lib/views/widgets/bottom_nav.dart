import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../sizing.dart';
import '../../local_data.dart';
import '../../constants.dart';

class CustomButtomNav extends StatefulWidget {
  final double navBarHeight;
  final Function showClickedPage;
  const CustomButtomNav(
      {super.key, required this.navBarHeight, required this.showClickedPage});

  @override
  State<CustomButtomNav> createState() => _CustomButtomNavState();
}

class _CustomButtomNavState extends State<CustomButtomNav> {
  // bottomBar item
  Widget bottomBarItem(String activeIcon, String inactiveIcon, bool activeState,
      Function tapHandler, int pageIndex) {
    return GestureDetector(
      onTap: () {
        getPage(pageIndex);
      },
      child: Column(
        // TODO: see if the latter comparison can be can be romove in longer screen to use the former
        mainAxisAlignment: Sizing.screenHeight() < 600 ? MainAxisAlignment.center : MainAxisAlignment.end,
        children: [
          SizedBox(
              height: Sizing.customHeight(28.00),
              child: activeState
                  ? Image.asset(
                      activeIcon,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      inactiveIcon,
                      fit: BoxFit.cover,
                      color: grey,
                    )),

          Gap(Sizing.customHeight(10)),

          // ignore: todo
          // TODO: watch out for any weird behaviour due to setting the else condition to a SizedBox

          activeState
              ? Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: pryColor,
                    shape: BoxShape.circle,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  // switch between pages
  void getPage(index) {
    // access the data list ------- cs stands for click state
    void updateClickState(cs0, cs1, cs2, cs3) {
      bottomNavigationData[0]['isActive'] = cs0;
      bottomNavigationData[1]['isActive'] = cs1;
      bottomNavigationData[2]['isActive'] = cs2;
      bottomNavigationData[3]['isActive'] = cs3;
    }

    // create a condition that check the index clicked and compare it the updateClickState function
      int selectedPageIndex = 0;

      if (index == 0) {
        setState(() {
          updateClickState(true, false, false, false);
        });
        widget.showClickedPage(0);
      } else if (index == 1) {
        setState(() {
          updateClickState(false, true, false, false);
        });
        widget.showClickedPage(1);
      } else if (index == 2) {
        setState(() {
          updateClickState(false, false, true, false);
        });
        widget.showClickedPage(2);
      } else if (index == 3) {
        setState(() {
          updateClickState(false, false, false, true);
        });
        widget.showClickedPage(2);
      }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.navBarHeight,
      width: Sizing.resolution(context).size.width,
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.only(
        left: Sizing.customWidth(55.00),
        right: Sizing.customWidth(55.00),
        top: Sizing.customWidth(22.00),
        bottom: Sizing.resolution(context).viewPadding.bottom,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(4, (index) {
            return bottomBarItem(
                bottomNavigationData[index]['activeIcon'],
                bottomNavigationData[index]['inactiveIcon'],
                bottomNavigationData[index]['isActive'],
                bottomNavigationData[index]['function'],
                index);
          })),
    );
  }
}
