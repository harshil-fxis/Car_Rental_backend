import 'package:car_rental/Screen/partner_payment_receive_method_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerVerifyStatusPage extends StatefulWidget {
  const PartnerVerifyStatusPage({super.key});

  @override
  State<PartnerVerifyStatusPage> createState() => _PartnerVerifyStatusPageState();
}

class _PartnerVerifyStatusPageState extends State<PartnerVerifyStatusPage> {
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
                  Text("Verify Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 25,),
              Image.asset("images/icon-logo/Verify Icon.png"),
              SizedBox(height: 20,),
              Text("Successful",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text("Your OTP verification was successful. now You can proceed with your account setup or booking process.",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerPaymentReceiveMethodPage()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Text("Next",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),)),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}