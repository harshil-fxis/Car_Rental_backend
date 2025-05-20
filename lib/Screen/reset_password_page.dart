import 'package:car_rental/Screen/signup_page.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 60,left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/icon-logo/Logo.png",height: 30,),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Reset your password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Enter the email address associated with your account and we'll send a link to reset your password.",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.grey[500],fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "  Email",
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  SizedBox(height: 27,),
                  Center(child: Text("Return to sing in")),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Create a ",style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.bold),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                          },
                          child: Text("New Account",style: TextStyle(fontWeight: FontWeight.bold),)),
                        
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}