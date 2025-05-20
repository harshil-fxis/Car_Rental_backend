import 'package:car_rental/Screen/home_page.dart';
import 'package:car_rental/Screen/notification_delete_page.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                  Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,)
                ],
              ),
            ),
          ),
        body: SingleChildScrollView(
          child: Container(
            height: 750,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      Text("2 Unread Notification",style: TextStyle(fontSize: 15,),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 10),
                                child: Container(child: Image.asset("images/icon-logo/i con.png",height: 40,)),
                              ),
                              Container(
                                height: 80,
                                width: 313,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Car Booking Successful",style: TextStyle(fontWeight: FontWeight.w900),),
                                          Row(
                                            children: [
                                              Text("10:00 am",style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                              Container(
                                                height: 9,
                                                width: 9,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Your car is ready! Check your email for the booking and pickup instructions. Safe travels!",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: InkWell(
                          onLongPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDeletePage()));
                          },
                          child: Container(
                            height: 78,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 10),
                                  child: Container(child: Image.asset("images/icon-logo/i con (1).png",height: 40,)),
                                ),
                                Container(
                                  height: 80,
                                  width: 313,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Payment Notification",style: TextStyle(fontWeight: FontWeight.w900),),
                                            Row(
                                              children: [
                                                Text("10:00 am",style: TextStyle(color: Colors.grey),),
                                                SizedBox(width: 5,),
                                                Container(
                                                  height: 9,
                                                  width: 9,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Your payment was proccessed successfully! Enjoy your ride.",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.grey[200],
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 10),
                                child: Container(child: Image.asset("images/icon-logo/i con (2).png",height: 40,)),
                              ),
                              Container(
                                height: 80,
                                width: 313,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Car Pickup/Drop-off time",style: TextStyle(fontWeight: FontWeight.w900),),
                                          Row(
                                            children: [
                                              Text("09:00 am",style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Pickup time confirmed See you at[Time] for you car rental.Drop-off Time Confirmed Plese",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
          
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Previous",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 15,),
                
                Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: InkWell(
                          onLongPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDeletePage()));
                          },
                          child: Container(
                            height: 78,
                            width: double.infinity,
                            color: Colors.grey[200],
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 10),
                                  child: Container(child: Image.asset("images/icon-logo/i con (3).png",height: 40,)),
                                ),
                                Container(
                                  height: 80,
                                  width: 313,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Late Return Warning",style: TextStyle(fontWeight: FontWeight.w900),),
                                            Row(
                                              children: [
                                                Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                                SizedBox(width: 5,),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Late Return Alert! Please return the car as soon as possible to avoid extra charges.",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: InkWell(
                          onLongPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDeletePage()));
                          },
                          child: Container(
                            height: 78,
                            width: double.infinity,
                            color: Colors.grey[200],
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 10),
                                  child: Container(child: Image.asset("images/icon-logo/i con (4).png",height: 40,)),
                                ),
                                Container(
                                  height: 80,
                                  width: 313,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Cancellation Notice",style: TextStyle(fontWeight: FontWeight.w900),),
                                            Row(
                                              children: [
                                                Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                                SizedBox(width: 5,),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Your Reservation Has Been Canceled or Booking Cancelled Successfully.",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.grey[200],
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 10),
                                child: Container(child: Image.asset("images/icon-logo/i con (5).png",height: 40,)),
                              ),
                              Container(
                                height: 80,
                                width: 313,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Discount Notification",style: TextStyle(fontWeight: FontWeight.w900),),
                                          Row(
                                            children: [
                                              Text("Yesterday",style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Congratulations! You've unlocked a 10% discount on your next rental.",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
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