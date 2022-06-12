import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utilities/appcolor.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color:AppColor.sColor,
            borderRadius: BorderRadius.circular(5)),
        height: 160,
        width: Get.size.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enjoy Upto\n50% discount',
                  style: TextStyle(
                      fontSize: 17,
                      color: AppColor.pColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                MaterialButton(
                  height: 35,
                  minWidth: 110,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: AppColor.pColor,
                  onPressed: () {},
                  child: Text(
                    'Subscribe',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 145,
              child: Image.asset(
                'images/hang.jpg',
                fit: BoxFit.fill,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
