import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:crypto_wallet_ui/theme/colors.dart' as color;

Widget myAppBar = Padding(
    padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
    child: Column(children: [
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning,',
                style: TextStyle(fontSize: 14, color: color.AppColor.subtitle),
              ),
              const SizedBox(height: 5),
              const Text('John Clarck',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700))
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/bell.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
    ]));
