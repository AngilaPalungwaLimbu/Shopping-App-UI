import 'package:explore/view/home/widgets/buttons.dart';
import 'package:explore/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class ExplorePage extends StatelessWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 300,
                width: 300,
                child: Image.asset('images/shop.png',fit: BoxFit.cover,),
              ),
              ),
            SizedBox(height: 20,),

            Text('Find your next',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 35))),
            Text('Clothes here',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 35))),
            SizedBox(height: 20,),

            Text('Explore all the most trending clothes',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Colors.grey))),
            Text('here based on your interest',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Colors.grey))),
            Text('and go shopping!',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Colors.grey))),

            SizedBox(height: 25,),
            
            MyButtons(
              btntext: 'head on to Explore', 
              onPressed:  (){
                Get.off(()=>SignPage());
              })

          ],
        ),
      ),
    );
  }
}