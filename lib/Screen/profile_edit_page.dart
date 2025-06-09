import 'dart:convert';

import 'package:car_rental/Screen/global_state.dart';
import 'package:car_rental/Screen/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  // late String userId;
  // @override
  // void initState(){
  //   super.initState();
  //   userId = AppState.userId.value ?? '';
  // }
  final userId = AppState.userId.value;
  Future<void> profileEdit() async{
    try{
      final response = await http.put(Uri.parse("${ApiConfig.baseUrl}/editProfile"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            "id": userId,
            "name": nameController.text.trim(),
            "surname": surnameController.text.trim(),
            "email": emailController.text.trim(),
            "phone": phoneController.text.trim()
          }
        ),
      );
      print("userId: ${userId.toString()}");
      print("Status code: ${response.statusCode}");
      print("Body: ${response.body}");
      if(response.statusCode == 200){
        // final data = json.decode(response.body);
        showmessage("Profile Edites Successfully !");
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
      }else{
        showmessage("Please enter valid email and password !");
        print("error");
      }
    }catch(e){
      print(e.toString());
    }
  }
  void showmessage(message){
    var snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  
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
                  Text("Edit Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey[200],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset("images/icon-logo/user img.png"),
                                Positioned(
                                  right: 0,
                                  bottom: 2,
                                  child: Container(
                                    child: Image.asset("images/icon-logo/Camera (1).png"),
                                  )
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Text("Benjsmin Jack",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Benjamin",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        controller: surnameController,
                        decoration: InputDecoration(
                          hintText: "Jack",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "benjaminJack@gmail.com",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "+100******00",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: InkWell(
                      onTap: profileEdit,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(child: Text("Save chang",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}