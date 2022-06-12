import 'package:explore/view/home/utilities/appcolor.dart';
import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  final String ListTitle;
  final String trailingText;
  const ListTile1({Key? key,
    required this.ListTitle,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(ListTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        trailing: Text(trailingText,
            style: TextStyle(
                fontSize: 15,
                color: AppColor.pColor,
                fontWeight: FontWeight.bold)));
  }
}
