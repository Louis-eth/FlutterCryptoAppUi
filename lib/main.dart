/*
 * Created Date: Monday, February 14th 2022, 8:21:45 pm
 * Author: Louis-eth
 * 
 */

import 'package:crypto_wallet_ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return MaterialApp(
        title: 'crypto_wallet_ui',
        theme: ThemeData(
            textTheme:
                GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
