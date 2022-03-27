import 'package:crypto_wallet_ui/components/activity.dart';
import 'package:flutter/material.dart';

import 'package:crypto_wallet_ui/components/card.dart';
import 'package:crypto_wallet_ui/components/appBar.dart';
import 'package:crypto_wallet_ui/components/iconsB.dart';
import 'package:crypto_wallet_ui/components/titleSection.dart';
import 'package:crypto_wallet_ui/components/contacts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
            height: size.height,
            child: Stack(children: [
              myAppBar,
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: const EdgeInsets.only(top: 65),
                height: size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Column(
                  children: [
                    iconSection,
                    titleSection('QUICK CONTACTS'),
                    contactsSection,
                    const SizedBox(height: 10),
                    titleSection('ACTIVITY'),
                    activitySection(context),
                    //all widget here
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.14,
                left: 20,
                right: 20,
                child: card(context),
              ),
            ])),
      ],
    );
  }
}
