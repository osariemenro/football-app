import 'package:flutter/material.dart';

import 'views/screens/dashboard.dart';
import './constants.dart';
import './views/screens/live_match.dart';
import './views/screens/onboarding.dart';
import './views/screens/dashboard.dart';

void main() {
  runApp(const FootballApp());
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live match app - ui credit: Arip for Enver Studio - dribbble ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: lightBg,
      ),
      initialRoute: Onboarding.routeName,
      routes: {
        Onboarding.routeName: (_) => const Onboarding(),
        LiveGameScreen.routeName: (_) => const LiveGameScreen(),
        Dashboard.routeName: (_) => Dashboard(),
      },
    );
  }
}
