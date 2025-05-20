import 'package:car_rental/Screen/login_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/Group 1718.png"),
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
                    Text("Lets Start\nA New Experience\nWith Car rental.",style: TextStyle(height: 1.2,fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                    
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text("Discover your next adventure with Qent.We're here to provide you with a seamless car rental experience.\nLes's get started on your jouney.",style: TextStyle(fontSize: 14,color: Colors.white),),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 7,
                          width: 22,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade500,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 50),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text("Get Started",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}