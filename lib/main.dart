import 'dart:ui';

import 'package:cupertino_container/cupertino_container.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(
        // applyThemeToAll: true,
        brightness:
            FlexThemeData.light(
              // scheme: usedScheme,
              colors: FlexSchemeColor(
                primary: CupertinoColors.activeOrange,
                secondary: CupertinoColors.activeGreen,
              ),
              appBarElevation: 8.5,
            ).brightness,
      ),
      checkerboardOffscreenLayers: true,
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/bg3.jpeg'),
            fit: BoxFit.cover,
          ),

          // on ? ctdLight : ctdDark;
          // notifyListeners();
          // return (on ? ctdLight : ctdDark);
          // return ctd;
          // }
          //   home: const MyHomePage(title: 'Flutter Demo sdsddHome Page'),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
          child: CupertinoContainer(
            decoration: BoxDecoration(
              color: CupertinoColors.white.withValues(alpha: 0.0),
            ),
            // child: CollapsSideMain(),
          ),
        ),
      ),
    );
  }
}
