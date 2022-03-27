import 'package:flutter/material.dart';

import 'package:crypto_wallet_ui/theme/colors.dart' as color;

Widget titleSection(String title) {
  return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Text(title,
              style: TextStyle(fontSize: 12, color: color.AppColor.textTitle)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            iconSize: 14,
            color: Colors.black54,
          )
        ],
      ));
}
