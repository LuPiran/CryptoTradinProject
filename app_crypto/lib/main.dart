import 'package:app_crypto/screens/home_screen.dart';
import 'package:app_crypto/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroudColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kPrimaryTextColor,
              fontFamily: 'Onest',
            ),
        iconTheme: const IconThemeData(
          color: kPrimaryColor,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
