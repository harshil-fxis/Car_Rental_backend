import 'package:car_rental/Screen/Partner_verify_status_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartenerOtpConfirmationPage extends StatefulWidget {
  const PartenerOtpConfirmationPage({super.key});

  @override
  State<PartenerOtpConfirmationPage> createState() => _PartenerOtpConfirmationPageState();
}

class _PartenerOtpConfirmationPageState extends State<PartenerOtpConfirmationPage> {
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
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  Text("OTP Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enter your Verification Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text("Please enter the OTP (One-Time Password) sent to your registered Email address to complete your verification",style: TextStyle(fontSize: 12),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                     ),
                     SizedBox(
                      height: 55,
                      width: 55,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Remaining Time :00:59s"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerVerifyStatusPage()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Text("Verify Now",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Don't receive OTP?",style: TextStyle(fontSize: 12),),
              SizedBox(height: 2,),
              Text("Resend.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,decoration: TextDecoration.underline),),
            ],
          ),
        ),
      ),
    );
  }
}