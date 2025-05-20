import 'package:car_rental/Screen/reset_password_page.dart';
import 'package:car_rental/Screen/signup_page.dart';
import 'package:car_rental/Screen/verify_phone_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[50]),
        // color: Colors.grey[200],
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: Image.asset("images/icon-logo/Logo.png",height: 30,),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Welcome Back\nReady to hit the road.",style: TextStyle(height: 1.2,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "  Email/Phone Number",
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
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          hintText: "  Password",
                          hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Image.asset("images/icon-logo/Group 547.png"),
                          // suffixIcon: IconButton(icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off), onPressed: () { setState(() {
                          //   passwordVisible = !passwordVisible;
                          // }); },),
                          alignLabelWithHint: false,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),         
                  Padding(
                    padding: const EdgeInsets.only(left: 6,right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: Colors.black,
                              onChanged: (newBool){
                                setState(() {
                                  isChecked = newBool;
                                });
                              }
                            ),
                            Text("Remember Me",style: TextStyle(fontSize: 14,color: Colors.grey),),
                          ],
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage()));
                          },
                          child: Text("Forgot Password")),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPhonePage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.only(left: 20,right: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.only(left: 20,right: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[100],
                      ),
                      child: Center(child: Text("Sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
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
                          width: 150,
                          color: Colors.grey[300],
                        ),
                        Center(child: Text("Or",style: TextStyle(fontSize: 13),)),
                        Container(
                          height: 1,
                          width: 150,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: double.infinity,
                    height: 45,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey.shade300),
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
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 45,
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey.shade300),
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
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
                      SizedBox(width: 2,),
                      Text("Sign Up.",style: TextStyle(fontSize: 12,color: Colors.grey.shade800,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}