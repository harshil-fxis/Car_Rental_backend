import 'package:car_rental/Screen/payment_method.dart';
import 'package:car_rental/Screen/payment_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentConfirmationPage extends StatefulWidget {
  final dynamic cars;
  const PaymentConfirmationPage({Key? key, required this.cars})
      : super(key: key);

  @override
  State<PaymentConfirmationPage> createState() => _PaymentConfirmationPageState();
}

class _PaymentConfirmationPageState extends State<PaymentConfirmationPage> {
  List<String> cars = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
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
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(cars: cars,)));
                }, 
                child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                Text("Conirmation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
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
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("images/icon-logo/Group 893.png")),
                        ),
                        Container(
                          height: 2,
                          width: 105,
                          color: Colors.black,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("images/icon-logo/Group 893.png")),
                        ),
                        Container(
                          height: 2,
                          width: 105,
                          color: Colors.black,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Booking details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                      SizedBox(width: 40,),
                      Text("Payment methods",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                      SizedBox(width: 40,),
                      Text("confimation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            child: Image.asset("images/cars/images__5_-removebg-preview 1.png",)),
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 20,),
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
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                  ),
                ),  
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Booking information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Booking ID"),
                            ],
                          ),
                          Text("00451"),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Name"),
                            ],
                          ),
                          Text("benjamin Jack"),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Pick up Date"),
                            ],
                          ),
                          Text("19 Jan 2024 10:30 am"),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Return Date"),
                            ],
                          ),
                          Text("22 Jan 2024 05:00 pm"),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Location"),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("images/icon-logo/Group 661 (1).png",height: 17,),
                              SizedBox(width: 5,),
                              Text("Shore Dr, Chicago 0062 Usa"),
                            ],
                          ),
                        ],
                      ),
          
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Payment",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Trx ID"),
                            ],
                          ),
                          Text("#141mtsly5854d58",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Amount"),
                            ],
                          ),
                          Text("\$1400",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text("Service fee"),
                            ],
                          ),
                          Text("\$15",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total amount",style: TextStyle(fontWeight: FontWeight.w900),),
                      Text("\$1415",style: TextStyle(fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment with"),
                      Image.asset("images/icon-logo/Master (1).png")
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentStatusPage(cars : cars)));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text("Confirm",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}