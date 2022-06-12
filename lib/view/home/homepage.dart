import 'package:explore/view/home/utilities/appcolor.dart';
import 'package:explore/view/home/widgets/Ads.dart';
import 'package:explore/view/home/widgets/anolisttile.dart';
import 'package:explore/view/home/widgets/introduction.dart';
import 'package:explore/view/home/widgets/list_tile_home.dart';
import 'package:explore/view/home/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageView extends StatelessWidget {
  HomePageView({Key? key}) : super(key: key);
  List products = [
    {
      "image": "images/pink.png",
      "clothName": "Pink Cardigan",
      "amount": "150.0",
      "rating": "4.5"
    },
    {
      "image":"images/white.png",
      "clothName": "Pink Cardigan",
      "amount": "150.0",
      "rating": "4.5"
    },
    {
      "image":"images/one.png",
      "clothName": "Pink Cardigan",
      "amount": "150.0",
      "rating": "4.5"
    },
    {
      "image":"images/vintage.png",
      "clothName": "Pink Cardigan",
      "amount": "150.0",
      "rating": "4.5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Introduction(),

                Advertisement(),

                ListTile1(
                  ListTitle: 'Top Categories',
                  trailingText: 'SEE ALL',
                ),

                Container(
                  height: 90,
                  width: Get.size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TopCategories(imagePath: 'images/dress.png'),
                      TopCategories(imagePath: 'images/shoes.png'),
                      TopCategories(imagePath: 'images/watch.png'),
                      TopCategories(imagePath: 'images/skirt.png'),
                      TopCategories(imagePath: 'images/headphone.png'),
                    ],
                  ),
                ),

                ListTile1(
                  ListTitle: 'New Arrivals',
                  trailingText: 'VIEW MORE',
                ),

                SizedBox(
                  height: 15,
                ),

                ListView.builder(
                  shrinkWrap: true,
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 236, 239, 239),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [  
                                    SizedBox(
                                      height: 110,
                                      width: 90,
                                      child: Image.asset(
                                        products[index]['image'],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          products[index]['clothName'],
                                          style: TextStyle(
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          '\$ ' + products[index]['amount'],
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        MaterialButton(
                                            onPressed: () {},
                                            color: Color(0xff006778),
                                            child: Text(
                                              '\u2606 ' +
                                                  products[index]['rating'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Color(0xff006778),
                                        )),
                                    IconButton(
                                        onPressed: () {}, icon: Icon(Icons.add))
                                  ],
                                )
                              ]),
                        ),
                      );
                    })

                // MyListTile(imagePath: 'images/pink.png', clothName: 'Pink Cardigan',amount: '150.0',rating: '4.5',),
                // SizedBox(height: 10),
                // MyListTile(imagePath: 'images/white.png', clothName: 'White Top', amount: '100', rating: '4.7'),
                // SizedBox(height: 10,),
                // MyListTile(imagePath: 'images/one.png', clothName: 'Summer Dress',amount: '200.0',rating: '5.0',),
                // SizedBox(height: 10),
                // MyListTile(imagePath: 'images/vintage.png', clothName: 'Vintage Jeans', amount: '120', rating: '3.5'),
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
                IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
