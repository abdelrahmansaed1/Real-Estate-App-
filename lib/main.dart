import 'package:flutter/material.dart';
import 'package:real_estatee_app/widgets/main/main_section.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real State",
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white)
        //     .copyWith(
        //         bodyLarge: TextStyle(
        //           color: kBodyTextColor,
        //         ),
        //         bodyMedium: TextStyle(
        //           color: kBodyTextColor,
        //         )),
      ),
      home: const MainSection(),
    );
  }
}
