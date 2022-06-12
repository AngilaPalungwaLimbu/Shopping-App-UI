import 'package:explore/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButtons extends StatelessWidget {
  final String btntext;
  final Function() onPressed;
  
  const MyButtons({ Key? key,
    required this.btntext, 
    required this.onPressed, 
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              height: 55,
              minWidth: MediaQuery.of(context).size.width,
              onPressed:onPressed,
              color: Color(0xff086E7D),
              child: Text(btntext,style:TextStyle(color: Colors.white, fontSize: 20) ,),
              );
  }
}