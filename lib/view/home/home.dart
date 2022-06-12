
import 'package:explore/view/home/utilities/appcolor.dart';
import 'package:flutter/material.dart';

import 'widgets/list_tile_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hey Nancy,',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 8,),
                      Text('Begin your shopping!!',style: TextStyle(fontSize: 15,color: Colors.grey[500]),),
                    ],
                  ),
                  IconButton(onPressed: (){}, icon:Icon(Icons.notifications_outlined),iconSize: 30,)
                ],
              ),
              SizedBox(height:20),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 217, 234, 237),
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 160,
                width:MediaQuery.of(context).size.width ,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text('Enjoy Upto\n50% discount',style: TextStyle(fontSize: 17, color: AppColor.pColor,fontWeight: FontWeight.bold),),

                          SizedBox(height: 5,),
                          MaterialButton(
                            height: 35,
                            minWidth:110,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            color: AppColor.pColor,
                            onPressed: (){},
                            child: Text('Subscribe',style: TextStyle(fontSize: 16 ,color: Colors.white),),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: 145,
                        child: Image.asset('images/hang.jpg',fit: BoxFit.fill,),
                      )
                      
                    ]
                  ),
                ),
        
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Categories',style: TextStyle(fontSize: 20,)),
                  TextButton(onPressed: (){},
                   child: Text('SEE ALL',style: TextStyle(fontSize: 15, color: AppColor.pColor,fontWeight: FontWeight.bold),))
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Arrivals',style: TextStyle(fontSize: 20,)),
                  TextButton(onPressed: (){},
                   child: Text('VIEW MORE',style: TextStyle(fontSize: 15, color: AppColor.pColor,fontWeight: FontWeight.bold),))
                ],
              ),
              SizedBox(height: 15,),
              MyListTile(imagePath: 'images/pink.png', clothName: 'Pink Cardigan',amount: '150.0',rating: '4.5',),
              SizedBox(height: 10),
              MyListTile(imagePath: 'images/white.png', clothName: 'White Top', amount: '100', rating: '4.7'),
              SizedBox(height: 10,),
              MyListTile(imagePath: 'images/one.png', clothName: 'Summer Dress',amount: '200.0',rating: '5.0',),
              SizedBox(height: 10),
              MyListTile(imagePath: 'images/vintage.png', clothName: 'Vintage Jeans', amount: '120', rating: '3.5'),
        
        
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.person_outline)),

              ],
            ),
          ),
        ),
      ),
      
    );
    
  }
}