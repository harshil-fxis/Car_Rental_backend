import 'package:car_rental/Screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerPaymentReceiveMethodPage extends StatefulWidget {
  const PartnerPaymentReceiveMethodPage({super.key});

  @override
  State<PartnerPaymentReceiveMethodPage> createState() => _PartnerPaymentReceiveMethodPageState();
}

class _PartnerPaymentReceiveMethodPageState extends State<PartnerPaymentReceiveMethodPage> {


  showBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context, 
      backgroundColor: Colors.white,
      builder: (BuildContext context){
        return SizedBox(
          height: MediaQuery.of(context).size.height /2.4,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 30,left: 15,right: 15),
            child: Column(
              children: [
                Image.asset("images/icon-logo/Group 1067.png"),
                SizedBox(height: 20,),
                Text("Congratulations",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                SizedBox(height: 15,),
                Text("Your car is ready for booking. Your listing has been successfully added to the platform. Get ready to start earning.",style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Back to Home",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }



  bool? isChecked = false;
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
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage(cars: cars,)));
                      }, 
                      child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                      Text("Payment receive methods",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Image.asset("images/icon-logo/cradit card.jpg"),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("select payment method",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 7,),
                              Image.asset("images/icon-logo/Group 878.png"),
                          SizedBox(width: 10,),
                          Text("Cash payment",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.grey.shade500),)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text("DAFULT",style: TextStyle(color: Colors.grey.shade600),)),
                              ),
                              SizedBox(width: 10,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Card information",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(fontSize: 15),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(fontSize: 15),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 8,bottom: 8),
                                child: SizedBox(
                                  height: 45,
                                  width: 200,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "Number",
                                      hintStyle: TextStyle(fontSize: 15),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset("images/icon-logo/Page-1.png"),
                              SizedBox(width: 10,),
                              Image.asset("images/icon-logo/Master.png"),
                              SizedBox(width: 10,),
                              Image.asset("images/icon-logo/Page-1 (1).png"),
                              SizedBox(width: 10,),
                              Image.asset("images/icon-logo/Page-1 (2).png"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 8,bottom: 8),
                                child: SizedBox(
                                  height: 45,
                                  width: 140,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "MM / YY",
                                      hintStyle: TextStyle(fontSize: 15),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text("|",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.grey.shade300),),
                          SizedBox(width: 20,),
                          Container(
                            height: 45,
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("CVC",style: TextStyle(fontSize: 15,color: Colors.grey.shade600,fontWeight: FontWeight.w700),),
                                Image.asset("images/icon-logo/Group 425.png"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Country or region",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "United States",
                            suffixIcon: Image.asset("images/icon-logo/Vector (5).png"),
                            hintStyle: TextStyle(fontSize: 13),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,right: 20,),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Zip",
                            hintStyle: TextStyle(fontSize: 13),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        activeColor: Colors.black,
                        onChanged: (newBool){
                          setState(() {
                              isChecked = newBool;
                            }
                          );
                        }
                      ),
                      Text("Tearms & continue",style: TextStyle(fontSize: 14,color: Colors.grey.shade600,fontWeight: FontWeight.w600),),
                      SizedBox(width: 10,),
                      Image.asset("images/icon-logo/Vector (5).png"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 110,
                          color: Colors.grey[300],
                        ),
                        Center(child: Text("Pay with card Or",style: TextStyle(fontSize: 13),)),
                        Container(
                          height: 1,
                          width: 110,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 45,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple_sharp,size: 27,),
                        SizedBox(width: 3,),
                        Text("Apple pay",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    height: 45,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icon-logo/icons.png",height: 17,),
                        SizedBox(width: 7,),
                        Text("Google pay",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: InkWell(
                      onTap: () {
                        showBottomSheet(context);
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(child: Text("Submit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),
              ],
            ),
          ),
      ),
      ),
    );
  }
}