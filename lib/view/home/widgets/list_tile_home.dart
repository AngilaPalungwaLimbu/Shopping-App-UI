import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {

  final String imagePath;
  final String clothName;
  final String amount;
  final String rating;

  const MyListTile({ Key? key,
  required this.imagePath,
  required this.clothName,
  required this.amount,
  required this.rating,


   }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 239, 239),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height:110,
                          width: 90,
                          child: Image.asset(imagePath,fit: BoxFit.fill,),
                        ), 
                        SizedBox(width: 10 ,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(clothName,style: TextStyle(fontSize: 17,),),
                            Text('\$ '+amount,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            MaterialButton(
                                onPressed: (){}, 
                              color: Color(0xff006778),
                              child:Text('\u2606 '+rating,style: TextStyle(color: Colors.white,fontSize: 15),)
                            )
                          ],
                        ),
                      ],
                    ),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color:Color(0xff006778) ,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add))
                      ],
                    )
                  ]
                ),
                
              ),
              
            );
            
  }
}