import 'package:car_rental/Screen/verification_code_page.dart';
import 'package:flutter/material.dart';

class VerifyPhonePage extends StatefulWidget {
  const VerifyPhonePage({super.key});

  @override
  State<VerifyPhonePage> createState() => _VerifyPhonePageState();
}

class Country{
  final String name;
  final String flagUrl;
  Country({required this.name,required this.flagUrl});
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
 
  final List<Country> countries = [
    Country(name: "United States", flagUrl: "images/countries/united-states.png"),
    Country(name: "India", flagUrl: "images/countries/flag.png"),
    Country(name: "Germany", flagUrl: "images/countries/germany.png"),
  ];

  Country? selectedCountry;

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
                        child: DropdownButton<Country>(
                            value: selectedCountry,
                            icon: Image.asset("images/icon-logo/Group 568.png",height: 15,),
                            onChanged: (Country? newValue) {
                              setState(() {
                                selectedCountry = newValue;
                              }
                            );
                          },
                          items: countries.map((Country country) {
                            return DropdownMenuItem<Country>(
                              value: country,
                              child: Row(
                                children: [
                                  Image.asset(
                                    country.flagUrl,
                                    width: 24,
                                    height: 16,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 40),
                                  Text(country.name),
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
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodePage()));
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