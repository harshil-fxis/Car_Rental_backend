import 'package:car_rental/Screen/audio_call_page.dart';
import 'package:car_rental/Screen/message_page.dart';
import 'package:car_rental/Screen/video_call_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSectionPage extends StatefulWidget {
  const ChatSectionPage({super.key});

  @override
  State<ChatSectionPage> createState() => _ChatSectionPageState();
}

class _ChatSectionPageState extends State<ChatSectionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
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
                  Row(
                    children: [
                      InkWell(onTap: (){
                    Navigator.pop(context);
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset("images/icon-logo/user1.png",height: 40,),
                      Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                      ))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hela Quintin",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                      SizedBox(height: 1,),
                      Text("Online",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                    ],
                  ),
                    ],
                  ), 
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCallPage()));
                        },
                        child: Image.asset("images/icon-logo/Group 1162.png",height: 40,)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AudioCallPage()));
                        },
                        child: Image.asset("images/icon-logo/Vector (3).png",height: 40,color: Colors.grey.shade800,)),
                    ],
                  ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              Expanded(
                child: ListView(
                  reverse: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Row(
                        children: [
                          Image.asset("images/icon-logo/user1.png",height: 25,),
                          SizedBox(width: 10,),
                          Text("Typing...",style: TextStyle(fontSize: 13,color: Colors.grey.shade600),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Image.asset("images/icon-logo/user1.png",height: 25,),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("It's ok no problem",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),))
                              ],
                            ),
                            SizedBox(height: 3,),
                          Text("09:19 am                                                 ",style: TextStyle(fontSize: 10,color: Colors.grey.shade500),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Image.asset("images/icon-logo/Group 1143.png",height: 25,)),
                                  Image.asset("images/icon-logo/Group 1163.png",height: 25,),
                              ],
                            ),
                            SizedBox(height: 3,),
                          Text("   09:18 am",style: TextStyle(fontSize: 10,color: Colors.grey.shade500),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.85,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)),
                                  SizedBox(width: 7,),
                                  Image.asset("images/icon-logo/user1.png",height: 10,),
                                  SizedBox(width: 7,)
                              ],
                            ),
                            SizedBox(height: 3,),
                          Text("09:17 am                    ",style: TextStyle(fontSize: 10,color: Colors.grey.shade500),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Image.asset("images/icon-logo/user1.png",height: 25,),
                                SizedBox(width: 10,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.7,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),))
                              ],
                            ),
                            SizedBox(height: 3,),
                          Text("                                         09:15 am",style: TextStyle(fontSize: 10,color: Colors.grey.shade500),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.85,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),)),
                                  SizedBox(width: 24,),
                              ],
                            ),
                            SizedBox(height: 3,),
                          Text("09:10 am                    ",style: TextStyle(fontSize: 10,color: Colors.grey.shade500),)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Image.asset("images/icon-logo/user1.png",height: 25,),
                                SizedBox(width: 10,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.71,
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text("Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),))
                              ],
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Angelina is a partner of QENT",style: TextStyle(fontSize: 13,color: Colors.grey.shade600),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hela Quintin",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                )
              ),
              Container(
                height: 45,
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400)
                        ),
                        child: Image.asset("images/icon-logo/Vector (6).png")),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width /1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400)
                      ),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "I’ll complete the booking now. Thank you!",
                          // hintStyle: TextStyle(fontSize: 12),
                          border: InputBorder.none,
                          suffixIcon: Image.asset("images/icon-logo/Group 1131.png")
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image.asset("images/icon-logo/send aro.png",height: 25,)
                  ],
                ),
              )
              // SizedBox(height: 20,),
              // Text("Hela Quintin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
              // SizedBox(height: 5,),
              // Text("Angelina is a partner of QENT"),
              // SizedBox(height: 30,),
              // Row(
              //   children: [
                  // Container(
                  //   height: 40,
                  //   width: double.infinity,
                  //   color: Colors.grey.shade400,
                  // )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}