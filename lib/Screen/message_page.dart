import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/chat_section_page.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(cars: null,)));
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  SizedBox(width: 10,),
                  Image.asset("images/icon-logo/Group 164.png",height: 40,),
                  SizedBox(width: 10,),
                  Text("Chats",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                    ],
                  ), 
                  Row(
                    children: [
                      Image.asset("images/icon-logo/Group 198.png",height: 40,),
                    ],
                  ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey[200],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Image.asset("images/icon-logo/Group 159.png"),
                      hintText: "Find reviews........",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Center(child: Text("+",style: TextStyle(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.w300),)),
                              ),
                              SizedBox(height: 5,),
                              Text("Add story",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Image.asset("images/icon-logo/Group 1105.png")
                              ),
                              SizedBox(height: 5,),
                              Text("Carolina",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Image.asset("images/icon-logo/Group 1105 (2).png")
                              ),
                              SizedBox(height: 5,),
                              Text("Jonathon",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Image.asset("images/icon-logo/Group 1105 (1).png")
                              ),
                              SizedBox(height: 5,),
                              Text("Androw",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Image.asset("images/icon-logo/Group 1105 (4).png")
                              ),
                              SizedBox(height: 5,),
                              Text("Paper",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Container(
                          height: 100,
                          width: 70,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Image.asset("images/icon-logo/Group 1105 (5).png")
                              ),
                              SizedBox(height: 5,),
                              Text("Crestina",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatSectionPage()));
                        },
                        child: Container(
                          height: 65,
                          width: double.infinity,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(children: [
                                      Image.asset("images/icon-logo/user1.png",height: 50,),
                                      Positioned(
                                        right: 4,
                                        bottom: 2,
                                        child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                      ),
                                    ] ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Hela Quintin",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                        SizedBox(height: 5,),
                                        Text("Your car is on way! It will arrive......",style: TextStyle(fontSize: 12,),),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                     Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.blue,
                                          ),
                                          child: Center(child: Text("2",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white),)),
                                        ),
                                        Text("09:20 am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Image.asset("images/icon-logo/Oval.png",height: 50,),
                                    Positioned(
                                      right: 4,
                                      bottom: 2,
                                      child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                    ),
                                  ] ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Cameron",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      Text("Ok, thanks!",style: TextStyle(fontSize: 12,),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.blue,
                                        ),
                                        child: Center(child: Text("1",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700,color: Colors.white),)),
                                      ),
                                      Text("09:20 am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Image.asset("images/icon-logo/Oval (1).png",height: 50,),
                                    Positioned(
                                      right: 4,
                                      bottom: 2,
                                      child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                    ),
                                  ] ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Mr. Davit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      Text("Thank you for booking with us!.....",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("08:30 am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Image.asset("images/icon-logo/Oval (2).png",height: 50,),
                                  ] ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Richard",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      Text("You: A voice message",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("07:32 am",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Image.asset("images/icon-logo/Oval (3).png",height: 50,),
                                  ] ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maichel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      Text("You: It was an amazing and smooth.....",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Yesterday",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(children: [
                                    Image.asset("images/icon-logo/Oval (4).png",height: 50,),
                                    Positioned(
                                      right: 4,
                                      bottom: 2,
                                      child: Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                          ),
                                    ),
                                  ] ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Anna",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                                      SizedBox(height: 5,),
                                      Text("It's Ok, thankyou",style: TextStyle(color: Colors.grey,fontSize: 12,),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                   Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Yesterday",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}