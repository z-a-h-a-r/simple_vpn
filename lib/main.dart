import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGestureWidthTheme(
      backGestureWidth: BackGestureWidth.fraction(1),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Crypto Rates',
        theme: ThemeData(
          backgroundColor: const Color(0xFFF8F7FA),
          // fontFamily: 'Inter',
          scaffoldBackgroundColor: Colors.white,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
              TargetPlatform.iOS:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
            },
          ),
        ),
        home: const Scaffold(
          body: Text('Crypto'),
        ),
      ),
    );
  }
}
