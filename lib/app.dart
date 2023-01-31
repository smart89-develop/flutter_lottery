import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:size_config/size_config.dart';
import 'package:sm89_flutter_lottery/consts/color_consts.dart';
import 'package:sm89_flutter_lottery/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
      referenceHeight: 812,
      referenceWidth: 375,
      builder: (context, orientation) => MaterialApp(
        title: 'Lottery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.inter().fontFamily,
          primarySwatch: Colors.lightBlue,
          primaryColor: kColors.primaryColor,
          colorScheme: ThemeData().colorScheme.copyWith(
                secondary: Color(0xff436BA6),
                secondaryContainer: Color.fromRGBO(25, 59, 103, 0.05),
              ),
          iconTheme: IconThemeData(color: Color.fromRGBO(28, 46, 69, 0.6)),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Color.fromRGBO(28, 46, 69, 0.6)),
            actionsIconTheme:
                IconThemeData(color: Color.fromRGBO(28, 46, 69, 0.6)),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
