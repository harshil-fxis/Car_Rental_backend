import 'dart:convert';

import 'package:car_rental/Controller/car_list_controller.dart';
import 'package:car_rental/Screen/global_state.dart';
import 'package:car_rental/Screen/verification_code_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VerifyPhonePage extends StatefulWidget {
  const VerifyPhonePage({super.key});

  @override
  State<VerifyPhonePage> createState() => _VerifyPhonePageState();
}

// class Country{
//   final String name;
//   final String flagUrl;
//   Country({required this.name,required this.flagUrl});
// }

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  String? selectedCountri;

  final Map<String, String> countryFlags ={
    'india' : 'images/countries/flag.png',
    'United State' : 'images/countries/united-states.png'
  };

  void _navigatetoSearch(){
    if(selectedCountri != null && carDataByCountry.containsKey(selectedCountri));
    final brands = carDataByCountry[selectedCountri!]!;
    final flagUri = countryFlags[selectedCountri!]!;
  }

  void _navigatetoOtpPage(){
    if (selectedCountri != null){
      print("phone id 1: ${userId}");
      Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodePage()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please Select a Country")),);
    }
  }
 


  // final List<Country> countries = [
  //   Country(name: "United States", flagUrl: "images/countries/united-states.png"),
  //   Country(name: "India", flagUrl: "images/countries/flag.png"),
  //   Country(name: "Germany", flagUrl: "images/countries/germany.png"),
  // ];

  // Country? selectedCountry;

  // late String? userId;
  // @override
  // void initState(){
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_){
  //     setState(() {
  //       userId = AppState.userId.value ?? '';
  //     });
  //   });
  // }

  
  final userId = AppState.userId.value;
  TextEditingController phoneController = TextEditingController();
  Future<void> sendOTP() async{
    try{
      final response = await http.post(Uri.parse("https://f82d-103-173-21-78.ngrok-free.app/phone"),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            'id': userId.toString(),
            'phone': phoneController.text.trim(),
          }
        ),
      );
      print("phonr id: ${userId}"); 
      print("Status code: ${response.statusCode}");
      print("Body: ${response.body}");
      if(response.statusCode == 200){
        // final data = json.decode(response.body);
        // showmessage("Account Successfully Created !");
        // Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodePage()));
        _navigatetoOtpPage();
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
    final countryList = countryFlags.keys.toList();

    return Scaffold(
      body: Container(
        color: Colors.grey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 20),
                    child: Image.asset("images/icon-logo/Logo.png",height: 30,),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("Verify your phone number",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text("We have you an SMS with a code to number.",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.grey[500],fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      width: double.infinity,
                      child: Container(
                        width: 300,
                        child: DropdownButton<String>(
                          hint: Text("Select Country"),
                          value: selectedCountri,
                          icon: Image.asset("images/icon-logo/Group 568.png",height: 15,),
                          onChanged: (value) {
                            setState(() {
                              selectedCountri = value!;
                              AppState.selectedCountri.value = value;
                              AppState.flagUrl.value = countryFlags[value]!;
                              print("selected Country: $value");
                            }
                            );
                          },
                          items: countryList.map((country) {
                            final flag = countryFlags[country]!;
                            return DropdownMenuItem<String>(
                              value: country,
                              child: Row(
                                children: [
                                  Image.asset(
                                    flag,
                                    width: 24,
                                    height: 16,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 40),
                                  Text(country),
                                  SizedBox(width: 120),
                                ],
                              ),
                            );
                          }
                          ).toList(),
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
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "  Phone Number",
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
                  InkWell(
                    onTap: sendOTP,
                    child: Container(
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
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}