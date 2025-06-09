import 'dart:convert';
import 'dart:ffi';
import 'package:car_rental/Screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/Screen/global_state.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool passwordVisible = false;
  bool? isChecked = false;
  String message = "";

  final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    late int userId;
    Future<void> signupUser() async{
    final String url ='${ApiConfig.baseUrl}/signup';
    final response = await http.post(
      Uri.parse(url),
      headers : {"Content-Type": "application/json"},
      body: jsonEncode({
        "name": nameController.text.trim(),
        "email": emailController.text.trim(),
        "password": passwordController.text.trim(),
        "country": countryController.text.trim(),
      })
    );
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      userId = data['user'];
      AppState.userId.value = data['user'].toString();
      print("gloable id: ${AppState.userId.value}");
      print("User id: ${userId}");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      // final data = jsonDecode(response.body);
      // setState(() {
      //   message = data['message'];
      // });
    }else{
      setState(() {
        message = "signup failed: ${response.body}";
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
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
                      child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "  Full Name",
                            hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "  Email/ Address",
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
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: passwordController,
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
                              borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    SizedBox(height: 18,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          controller: countryController,
                          decoration: InputDecoration(
                            hintText: "  Contry",
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
                    SizedBox(height: 18,),
                    InkWell(
                      onTap: signupUser,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.only(left: 20,right: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(child: Text("Sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    ),
                    SizedBox(height: 17,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        margin: EdgeInsets.only(left: 20,right: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200],
                        ),
                        child: Center(child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),)),
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
                    SizedBox(height: 17,),
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
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(fontSize: 12,color: Colors.grey.shade600,fontWeight: FontWeight.bold),),
                        SizedBox(width: 2,),
                        Text("Login.",style: TextStyle(fontSize: 12,color: Colors.grey.shade800,fontWeight: FontWeight.bold),)
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