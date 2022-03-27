import 'package:flutter/material.dart';

import 'package:crypto_wallet_ui/theme/colors.dart' as color;

Widget iconSection = Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        actionButton(Icons.arrow_upward_rounded, 'Send'),
        actionButton(Icons.arrow_downward_rounded, 'Deposit'),
        actionButton(Icons.add_rounded, 'Buy'),
        actionButton(Icons.signal_cellular_alt_rounded, 'Earn'),
      ],
    ));

Widget actionButton(IconData icon, String title) {
  return Column(children: [
    MaterialButton(
      shape: const CircleBorder(),
      elevation: 0,
      focusElevation: 0,
      color: color.AppColor.blue,
      padding: const EdgeInsets.all(10),
      onPressed: () {},
      child: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
    ),
    const SizedBox(height: 5),
    Text(
      title,
      style: TextStyle(fontSize: 12, color: color.AppColor.blue),
    )
  ]);
}
