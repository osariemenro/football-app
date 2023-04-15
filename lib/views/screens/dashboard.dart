import 'package:flutter/material.dart';

import '../widgets/bottom_nav.dart';
import '../../sizing.dart';
import '../../constants.dart';
import './home.dart';
import './upcoming_games.dart';
import './news_screen.dart';
import 'live_match.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  static const routeName = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // pages
  static List<Widget> _pages = [
    Home(),
    UpcomingGame(),
    NewsScreen(),
    LiveGameScreen()
  ];

  // page indexing
  int pageIndex = 0;

  // this callback function gets the index of the page related to each the nav icon
  void getNewPage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // page
          SizedBox(
            height: Sizing.resolution(context).size.height -
                (Sizing.resolution(context).size.height * .12),
            child: _pages[pageIndex],
          ),

          // custom nav
          CustomButtomNav(
              navBarHeight: Sizing.screenHeight() * .12,
              showClickedPage: getNewPage)
        ],
      ),
    );
  }
}
