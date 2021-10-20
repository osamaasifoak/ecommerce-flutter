import 'package:edorock/constants/colors_constants.dart';
import 'package:edorock/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edorock',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsConstants.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: ColorsConstants.secondaryColor,
      ),
      home: const HomeView(),
    );
  }
}
