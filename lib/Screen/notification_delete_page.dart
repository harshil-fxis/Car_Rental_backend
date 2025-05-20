import 'package:car_rental/Screen/first_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationDeletePage extends StatefulWidget {
  const NotificationDeletePage({super.key});

  @override
  State<NotificationDeletePage> createState() => _NotificationDeletePageState();
}

class _NotificationDeletePageState extends State<NotificationDeletePage> {
  bool? _value = true;
  int _selectedItem = -1;
  bool? _isChecked = true;
  bool firstValue = true;
  bool secondValue = true;
  bool thirdValue = true;

  
  void _onItemTapped(int index){
    setState(() {
      _selectedItem = index;
    });
  }



  showDialogPopView(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        alignment: Alignment(0,0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.only(top: 10),
        insetPadding: EdgeInsets.symmetric(horizontal: 21),
        content: Container(
          height: 280,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(left: 20,right: 10,bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("images/icon-logo/Vector (2).png",height: 30,))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/icon-logo/Alate icons.png",height: 50,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Text("Are you sure you want to delete your notifications permanently?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      SizedBox(height: 15,),
                      Text("By doing this,your notifications will be deleted permanently and you will not be able to recover your notifications anymore.",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 35,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text("Delete",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: Text("Cancel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
         appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.grey[200],
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
            // height: 850,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _isChecked = !_isChecked!;
                                if(_isChecked == true){
                                  firstValue = true;
                                  secondValue = true;
                                  thirdValue = true;
                                }
                                else{
                                  firstValue = false;
                                  secondValue = false;
                                  thirdValue = false;
                                }
                                
                              });
                            },
                            // onTap: () => _onItemTapped(1),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                color: _isChecked! ? Colors.white : Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: _isChecked! ? Icon(Icons.check,color: Colors.transparent,) : Icon(Icons.check,color: Colors.white,)
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text("All",style: TextStyle(fontWeight: FontWeight.w700),),
                          SizedBox(width: 15,),
                          Text("3 Selected",style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              showDialogPopView();
                            },
                            child: Image.asset("images/icon-logo/Group 1007.png",height: 35,))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 15,),
                Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
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
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,right: 10),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          firstValue = !firstValue;
                                        });
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade400),
                                          color: firstValue ? Colors.white : Colors.black,
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: firstValue ? Icon(Icons.check,color: Colors.transparent,) : Icon(Icons.check,color: Colors.white,)
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Container(child: Image.asset("images/icon-logo/i con (1).png",height: 40,)),
                                  ],
                                ),
                              ),
                             
                              Padding(
                                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Payment Notification",style: TextStyle(fontWeight: FontWeight.w900),),
                                          SizedBox(width: 40,),
                                          Row(
                                            children: [
                                              Text("10:00 am",style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("Your payment was proccessed successfully! \nEnjoy your ride.",style: TextStyle(color: Colors.grey,fontSize: 12),maxLines: 2,)
                                    ],
                                  ),
                                ),
                              
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
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
                      Container(
                        padding: EdgeInsets.only(top: 20,bottom: 15),
                        width: double.infinity,
                        color: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text("Previous",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        ),
                      ),                
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    secondValue = !secondValue;
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade400),
                                    color: secondValue ? Colors.white : Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: secondValue ? Icon(Icons.check,color: Colors.transparent,) : Icon(Icons.check,color: Colors.white,)
                                ),
                              ),
                              SizedBox(width: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 0,right: 10),
                                child: Container(child: Image.asset("images/icon-logo/i con (3).png",height: 40,)),
                              ),
                              Container(
                                height: 80,
                                width: 273,
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
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left:0.0),
                        child: Container(
                          height: 78,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    thirdValue = !thirdValue;
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.shade400),
                                    color: thirdValue ? Colors.white : Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: thirdValue ? Icon(Icons.check,color: Colors.transparent,) : Icon(Icons.check,color: Colors.white,)
                                ),
                              ),
                              SizedBox(width: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 0,right: 10),
                                child: Container(child: Image.asset("images/icon-logo/i con (4).png",height: 40,)),
                              ),
                              Container(
                                height: 80,
                                width: 273,
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
                      SizedBox(height: 15,),
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