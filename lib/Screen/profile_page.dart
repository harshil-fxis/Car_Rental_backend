import 'package:car_rental/Screen/home_page.dart';
import 'package:car_rental/Screen/notification_page.dart';
import 'package:car_rental/Screen/partner_onboding.dart';
import 'package:car_rental/Screen/profile_edit_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }, 
                    child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                    Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                    Image.asset("images/icon-logo/Group 198.png",height: 40,),
                  ],
                ),
              ),
            ),
        body: SingleChildScrollView(
          child: Container(
            height: 830,
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Image.asset("images/icon-logo/user img.png"),
                              Positioned(
                                right: 2,
                                bottom: 1,
                                child: Container(
                                  child: Image.asset("images/icon-logo/Camera.png"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 7,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Benjsmin Jack",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                              Text("benjaminJack@gmail.com",style: TextStyle(fontSize: 12,color: Colors.grey),)
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEditPage()));
                        },
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset("images/icon-logo/Group 979.png"),
                                Text("Edit profile",style: TextStyle(fontSize: 12,color: Colors.grey),)
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("General",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
      
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/i con (6).png"),
                          SizedBox(width: 10,),
                          Text("Favorite cars",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Group 1719.png"),
                          SizedBox(width: 10,),
                          Text("Previous Rant",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                        },
                        child: Row(
                          children: [
                            Image.asset("images/icon-logo/Icon (6).png"),
                            SizedBox(width: 10,),
                            Text("Notification",style: TextStyle(fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerOnboding()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("images/icon-logo/Icon (5).png"),
                            SizedBox(width: 10,),
                            Text("Connected QENT Partnerships",style: TextStyle(fontWeight: FontWeight.w500),)
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("images/icon-logo/Vector (1).png")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
               
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Saport",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
               
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (8).png"),
                          SizedBox(width: 10,),
                          Text("Settings",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (7).png"),
                          SizedBox(width: 10,),
                          Text("Languages",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (9).png"),
                          SizedBox(width: 10,),
                          Text("Invite Friends",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (10).png"),
                          SizedBox(width: 10,),
                          Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (11).png"),
                          SizedBox(width: 10,),
                          Text("Help Support",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Icon (12).png"),
                          SizedBox(width: 10,),
                          Text("Log Out",style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("images/icon-logo/Vector (1).png")
                        ],
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