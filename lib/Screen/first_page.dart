import 'package:car_rental/Screen/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage("images/Baground  img.png"),
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
                    Text("Welcome to \nQent",style: TextStyle(height: 1.2,fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                    
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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