import 'package:car_rental/Screen/partner_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerOnboding extends StatefulWidget {
  const PartnerOnboding({super.key});

  @override
  State<PartnerOnboding> createState() => _PartnerOnbodingState();
}

class _PartnerOnbodingState extends State<PartnerOnboding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/Group 1720.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20,top: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),Image.asset("images/icon-logo/Group 1529.png",height: 65,),
                    SizedBox(height: 40,),
                    Text("Welcome to",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("QENT Partner program",style: TextStyle(fontSize: 30,color: Colors.white),),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerForm()));
                },
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Text("Welcome to Our Community! We’re glad to \nhave you as a partner in our car rental \nservice. Ready to rent out your car? \nLet’s get started!",style: TextStyle(fontSize: 15,color: Colors.white,),),
                      ),
                      SizedBox(height: 70,),
                      Container(
                        width: double.infinity,
                        height: 55,
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 50),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text("Get Started",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }
}