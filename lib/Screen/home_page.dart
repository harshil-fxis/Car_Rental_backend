import 'package:car_rental/Screen/bottom_navbar_page.dart';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/filter_page.dart';
import 'package:car_rental/Screen/notification_page.dart';
import 'package:car_rental/Screen/profile_page.dart';
import 'package:car_rental/Screen/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String,String>> carLogo = [
    {"image":"images/carLogo/Icon (3).png", "name":"Tesla"},
    {"image":"images/carLogo/Icon (2).png", "name":"Lamborghini"},
    {"image":"images/carLogo/Icon (1).png", "name":"BMW"},
    {"image":"images/carLogo/Icon.png", "name":"Ferrari"},
  ];

  final List<Map<String,dynamic>> cars = [
    {"image":"images/cars/white-ferrari-ff-car 1.png","title":"Ferrari-FF","rate":5.0,"city":"Washington DC","seats":4,"price":200},
    {"image":"images/cars/images__5_-removebg-preview 2.png","title":"Tesla Model S","rate":5.0,"city":"Chicago ,USA","seats":5,"price":100},
    {"image":"images/cars/white-ferrari-ff-car 1.png","title":"Ferrari-FF","rate":5.0,"city":"Washington DC","seats":4,"price":200},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.grey[50],
          title: Padding(
            padding: const EdgeInsets.only(top: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/icon-logo/Logo.png",height: 30,),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                      },
                      child: Image.asset("images/icon-logo/Group 594.png",height: 40,)),
                    SizedBox(width: 7,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      child: Image.asset("images/icon-logo/Group 164.png")),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            color: Colors.grey[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                        },
                        child: Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade500)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("images/icon-logo/Group 159.png"),
                                SizedBox(width: 10,),
                                Text("Search your dream car...."),
                              ],
                            ),
                          )
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context,rootNavigator: true).push(new CupertinoPageRoute<bool>(fullscreenDialog: true,builder: (BuildContext context) => FilterPage()));
                        },
                        child: Image.asset("images/icon-logo/filters  section.png")),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Brands",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 10,),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection:  Axis.horizontal,
                      itemCount: carLogo.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset('${carLogo[index]['image']}',height: 50,),
                                SizedBox(height: 7,),
                                Text('${carLogo[index]['name']}',style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                              child: Text("Best Cars",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                              child: Text("View All",style: TextStyle(fontSize: 11,color: Colors.grey[500],fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          child: Text("Available",style: TextStyle(color: Colors.grey[500],fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 195,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cars.length,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(cars: cars,)));
                                    },
                                    child: Container(
                                      height: 70,
                                      width: 162,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey.shade300)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 95,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                                  color: Colors.grey[200],
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 3,right: 3,top: 10,bottom: 10),
                                                  child: Image.asset('${cars[index]['image']}',height: 65,fit: BoxFit.fill,),
                                                )
                                              ),
                                              Positioned(
                                                right: 5,
                                                top: 5,
                                                child: Image.asset("images/icon-logo/i con (6).png",height: 23,))
                                            ],
                                          ),
                                          Container(
                                            height: 95,
                                            width: double.infinity,
                                            padding: EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("${cars[index]['title']}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Text("${cars[index]['rate']}",style: TextStyle(fontSize: 12),),
                                                    SizedBox(width: 5,),
                                                    Image.asset("images/icon-logo/Icons (1).png",height: 10,)
                                                  ],
                                                ),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("images/icon-logo/Group 200.png",height: 10,),
                                                    SizedBox(width: 5,),
                                                    Text("${cars[index]['city']}",style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset("images/icon-logo/Group 184.png",height: 10,),
                                                          SizedBox(width: 5,),
                                                          Text("${cars[index]['seats']} Seats",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset("images/icon-logo/Group 358.png",height: 13,),
                                                          SizedBox(width: 3,),
                                                          Text("\$${cars[index]['price']}/Day",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900),),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),                                        
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Text("Nearby",style: TextStyle(fontWeight: FontWeight.w900),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,),
                              child: Text("View All",style: TextStyle(fontSize: 11,color: Colors.grey[500],fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                                child: Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30,bottom: 10),
                                    child: Image.asset("images/cars/m8.png",height: 95,fit: BoxFit.fill,),
                                  ),
                                ),
                              );
                            }
                          ),
                        ),
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}