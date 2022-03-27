import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:crypto_wallet_ui/screens/body.dart';
import 'package:crypto_wallet_ui/theme/colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = <Widget>[
    SvgPicture.asset(
      'assets/lock.svg',
      color: Colors.black54,
    ),
    SvgPicture.asset('assets/bank.svg', color: Colors.black54),
    SvgPicture.asset('assets/users.svg', color: Colors.black54),
    SvgPicture.asset('assets/user.svg', color: Colors.black54),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: color.AppColor.blue,
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: color.AppColor.blue,
        child: SvgPicture.asset(
          'assets/egld_logo.svg',
          color: Colors.white,
          width: 30,
        ),
        //elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: SizedBox(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                items[0],
                items[1],
                const SizedBox(width: 20),
                items[2],
                items[3]
              ]),
        ),
      ),
    );
  }
}
