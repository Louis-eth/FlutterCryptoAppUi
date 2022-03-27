import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'dart:math';

import 'package:crypto_wallet_ui/theme/colors.dart' as color;

List<double> randomList(int n) {
  var randomNum = <double>[];
  var rand = Random();
  for (var i = 0; i < n; i++) {
    randomNum.add(rand.nextInt(5).toDouble());
  }
  return randomNum;
}

Widget egldIcon =
    SvgPicture.asset('assets/egld_logo.svg', color: Colors.white, height: 20);

Widget card(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color.AppColor.purple,
      ),
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  egldIcon,
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'eGold',
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                const SizedBox(height: 30),
                const Text(
                  r'$250,500',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text('1560 EGLD',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          width: MediaQuery.of(context).size.width,
          child: Sparkline(
            data: randomList(10),
            lineColor: Colors.white,
            //fillGradient: ,
            lineGradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.white54, Colors.white],
            ),
            lineWidth: 2,
            useCubicSmoothing: true,
            cubicSmoothingFactor: 0.1,
          ),
        ))
      ]));
}
