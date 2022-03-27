import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/components/contacts.dart';

Widget contact1 = contact('LE', '', const Color(0xFFEB984E),
    fontSize: 14, width: 39, height: 39, borderRadius: 11);
Widget contact2 = contact('JO', '', const Color(0xFF45B39D),
    fontSize: 14, width: 39, height: 39, borderRadius: 11);
Widget contact3 = contact('NO', '', const Color(0xFF5499C7),
    fontSize: 14, width: 39, height: 39, borderRadius: 11);

Widget activitySection(BuildContext context) {
  return Column(children: [
    activity(context, contact1, 'Levi', true, '9:03 PM', 100.89, 0.72),
    activity(context, contact2, 'John', false, '10:07 AM', 40.12, 0.29),
    activity(context, contact3, 'Noah', true, '5:03 PM', 349.90, 2.51),
  ]);
}

Widget activity(BuildContext context, Widget contact, String name,
    bool sendOrRecive, String time, double dollars, double egld) {
  return Container(
      margin: const EdgeInsets.only(left: 10, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        contact,
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text((sendOrRecive) ? 'Received from $name' : 'Send to $name',
              style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(time,
              style: const TextStyle(color: Colors.black38, fontSize: 11)),
        ]),
        const Spacer(),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text((sendOrRecive) ? '+$dollars' r'$' : '-$dollars' r'$',
              style: const TextStyle(fontWeight: FontWeight.w500)),
          Text('$egld EGLD',
              style: const TextStyle(color: Colors.black38, fontSize: 11))
        ]),
      ]));
}
