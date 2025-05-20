import 'package:car_rental/Screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentStatusPage extends StatefulWidget {
  final dynamic cars;
  const PaymentStatusPage({Key? key, required this.cars})
      : super(key: key);


  @override
  State<PaymentStatusPage> createState() => _PaymentStatusPageState();
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("images/icon-logo/Group 928.png"),
                      SizedBox(height: 15,),
                      Text("Payment successful",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      SizedBox(height: 10,),
                      Text("Your car rent Booking has been successfully",style: TextStyle(fontSize: 13),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 165,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Text("Booking information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                          SizedBox(height: 15,),
                          Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Car Model"),
                              Text("Tesla Model 3",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rental Date"),
                              Text("19Jan24 - 22Jan24",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Name"),
                              Text("Benjamin Jack",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ],
                      ),
                    ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transaction detail",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transaction ID"),
                          Text("#T000123B0J1",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transaction Date"),
                          Text("01Jan2024 - 10:30 am",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Method"),
                          Row(
                            children: [
                              Image.asset("images/icon-logo/Master (1).png"),
                              SizedBox(width: 7,),
                              Text("123 *** *** ***225",style: TextStyle(fontWeight: FontWeight.w900),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        child: Image.asset("images/icon-logo/Rectangle 445.png")
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount"),
                          Text("\$1400",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Service fee"),
                          Text("\$15",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax"),
                          Text("\$0",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        child: Image.asset("images/icon-logo/Rectangle 445.png")
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total amount",style: TextStyle(fontWeight: FontWeight.w900),),
                          Text("\$1415",style: TextStyle(fontWeight: FontWeight.w900),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/icon-logo/Group 936.png"),
                              SizedBox(width: 10,),
                              Text("Download Receipt")
                            ],
                          ),
                        ),
                      SizedBox(height: 20,),
                      Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/icon-logo/Group 939.png"),
                              SizedBox(width: 10,),
                              Text("Shar Your Receipt")
                            ],
                          ),
                        ),
                      SizedBox(height: 25,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Center(child: Text("Back to Home",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                        ),
                      ),
                      SizedBox(height: 100,),
          
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