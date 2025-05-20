import 'package:car_rental/Screen/booking_page.dart';
import 'package:car_rental/Screen/bottom_navbar_page.dart';
import 'package:car_rental/Screen/message_page.dart';
import 'package:car_rental/Screen/review_page.dart';
import 'package:car_rental/Screen/search_page.dart';
import 'package:flutter/material.dart';


class CarDetailPage extends StatefulWidget {
  final dynamic cars;
  const CarDetailPage({Key? key, required this.cars})
      : super(key: key);


  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  final List<Map<String, dynamic>> review = [
    {
      "image": "images/icon-logo/Ellipse 201.png",
      "name": "Mr.Jack",
      "rate": 5.0,
      "detail": "The rental car was clean, reliable, and the service was quick and efficient.",
    },
    {
      "image": "images/icon-logo/Ellipse 202.png",
      "name": "Robert",
      "rate": 5.0,
      "detail": "The rental car was clean, reliable, and the service was quick and efficient.",
    },
  ];

  List<String> cars = []; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
         appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.grey[100],
            title: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  Text("Car Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[300],
                    ),
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.grey[100],
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset("images/cars/images__5_-removebg-preview 1.png",)),
                          ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            )
                        ],
                      )
                    ),
                    Container(
                      height: 800,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 90,
                                width: 270,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 20),
                                      child: Text("Tesla Model S",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 10),
                                      child: Text("A car with high specs theat are rented ot an affordable price.",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                                    ),                                
                                  ],
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 114,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20,top: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("5.0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                            SizedBox(width: 5,),
                                            Image.asset("images/icon-logo/Icons (1).png",height: 10,),
                                          ],
                                        ),
                                      Text("(100+Reviews)",style: TextStyle(fontSize: 12,color: Colors.grey[500]),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey[300],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("images/icon-logo/user1.png",height: 40,),
                                      SizedBox(width: 15,),
                                      Text("Hela Quintin",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                                      SizedBox(width: 10,),
                                      Image.asset("images/icon-logo/Group 596.png",height: 20,),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("images/icon-logo/Call Icon.png",height: 30,),
                                      SizedBox(width: 15,),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
                                        },
                                        child: Image.asset("images/icon-logo/Message Icon.png",height: 30,)),
                                    ],
                                  ),
                                  
  
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Car features",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 260,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (5).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Capacity",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("5 Seats",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (6).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Engine Out",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("670 HP",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (7).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Max Speed",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("250Km/h",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (2).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Advance",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("Autopilot",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (4).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Single Charge",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("450 Miles",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        ),
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                              Image.asset("images/icon-logo/Icons (3).png",height: 30,),
                                              SizedBox(height: 10,),
                                              Text("Advance",style: TextStyle(fontSize: 11,color: Colors.grey[700]),),
                                              SizedBox(height: 3,),
                                              Text("Auto Parking",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                            ],),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text("Review (125)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewPage(review: review,)));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text("See All",style: TextStyle(fontSize: 11,color: Colors.grey[500],fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 95,
                              width: double.infinity,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 20,),
                                    child: Container(
                                      height: 100,
                                      width: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey.shade500)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset("${review[index]['image']}",height: 30,),
                                                      SizedBox(width: 7),
                                                      Text("${review[index]['name']}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("${review[index]['rate']}"),
                                                      SizedBox(width: 5,),
                                                      Image.asset("images/icon-logo/Icons (1).png",height: 10,)
                                                    ],
                                                  ),
                                              
                                                ],
                                              ),
                                            SizedBox(height: 10,),
                                            Text("${review[index]['detail']}",style: TextStyle(fontSize: 12),maxLines: 2,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                              }),
                            ),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage(cars: cars,)));
                                },
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Book Now",style: TextStyle(fontSize: 15,color: Colors.white)),
                                      SizedBox(width: 10,),
                                      Image.asset("images/icon-logo/Group 377.png")
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
          ),
    );
  }
}