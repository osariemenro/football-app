import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../sizing.dart';
import '../../constants.dart';
import './dashboard.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  static const routeName = '/';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final List onboardingMessage = [
    {
      'heading': 'Latest news updates',
      'paragraph':
          'Enjoy the latest news from the world of football in real time',
      'isActive': false
    },
    {
      'heading': 'Latest news updates',
      'paragraph':
          'Enjoy the latest news from the world of football in real time',
      'isActive': false
    },
    {
      'heading': 'Latest news updates',
      'paragraph':
          'Enjoy the latest news from the world of football in real time',
      'isActive': true
    }
  ];

  // ---- carousel swiping functionality ----- //
  // current carousel index
  final _pageViewSwipeController = PageController();

  // take carousel index(from pageView) and compare with the list index
  void setCurrentCarouselIndicator(index) {
    void setCarouselState(li0, li1, li2) {
      // note li: represents "list item"
      setState(() {
        onboardingMessage[0]['isActive'] = li0;
        onboardingMessage[1]['isActive'] = li1;
        onboardingMessage[2]['isActive'] = li2;
      });
    }

    // compare
    switch (index) {
      case 0:
        return setCarouselState(true, false, false);

      case 1:
        return setCarouselState(false, true, false);

      case 2:
        return setCarouselState(false, false, true);
    }
  }

  void initSate() {
    super.initState();
    // _pageViewSwipeController(); 
    _pageViewSwipeController.addListener(() {
      setCurrentCarouselIndicator(_pageViewSwipeController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Banner
          Container(
            height: Sizing.screenHeight() * .6,
          ),
          Container(
            padding: EdgeInsets.only(top: Sizing.customHeight(40)),
            color: Colors.white,
            height: Sizing.screenHeight() * .4,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * .4,
                    child: PageView(
                      controller: _pageViewSwipeController,
                      scrollDirection: Axis.horizontal,
                      children:
                          List.generate(onboardingMessage.length, (index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: Sizing.customWidth(60)),
                          child: Column(children: [
                            Text(onboardingMessage[index]['heading'],
                                style: poppinsMid.copyWith(fontSize: 25),
                                textAlign: TextAlign.center),
                            Gap(Sizing.customHeight(10)),
                            Text(
                              onboardingMessage[index]['paragraph'],
                              style: poppins13WhiteBG2.copyWith(
                                color: Color.fromARGB(255, 133, 133, 133),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        );
                      }),
                    ),
                  ),

                  // Gap(Sizing.customHeight(10)),
                  // scroll tracker
                  Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(left: Sizing.screenWidth() * .45),
                    width: Sizing.screenWidth() * .15,
                    child: Row(
                      children:
                          List.generate(onboardingMessage.length, (index) {
                        return Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.only(left: Sizing.customWidth(5)),
                          decoration: BoxDecoration(
                            shape: !onboardingMessage[index]['isActive']
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: !onboardingMessage[index]['isActive']
                                ? Color.fromARGB(255, 220, 220, 220)
                                : pryColor,
                          ),
                        );
                      }),
                    ),
                  ),

                  Gap(constraints.maxHeight * .2),

                  // next btn
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(Dashboard.routeName);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizing.customWidth(42),
                          vertical: Sizing.customHeight(13)),
                      decoration: BoxDecoration(
                        color: pryColor,
                        borderRadius:
                            BorderRadius.circular(Sizing.customHeight(20)),
                      ),
                      child: Text(
                        'Next',
                        style: poppins13WhiteBG2.copyWith(color: Colors.white),
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
