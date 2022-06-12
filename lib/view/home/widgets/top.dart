import 'package:explore/view/home/utilities/appcolor.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  final String imagePath;
  const TopCategories({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: AppColor.tColor,
        ),
        height: 60,
        width: 60,
        child: Image.asset(imagePath,scale: 1.2,),
      ),
    );
  }
}
