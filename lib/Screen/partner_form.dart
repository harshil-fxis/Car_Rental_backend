import 'dart:ui';
import 'package:car_rental/Screen/home_page.dart';
import 'package:car_rental/Screen/partener_otp_confirmation_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartnerForm extends StatefulWidget {
  const PartnerForm({super.key});

  @override
  State<PartnerForm> createState() => _PartnerFormState();
}

class _PartnerFormState extends State<PartnerForm> {
  List<String> carDetailType = ['Car Brand' ,'Car Model'];
  List<String> FuelType = ['Electric', 'Petrol', 'Diesel','Hybrid'];
  int fuelIndex = 2;
  int currentIndex = 0;
  int rCarBrandIndex = -1; 
  int lCarBrandIndex = 2; 
  final int MaxLength = 1000;
  int currentLength = 0;
  bool? isChecked = false;
  final TextEditingController _controller = TextEditingController();
  
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }




  @override
  void initState(){
    super.initState();
    _controller.addListener((){
      setState(() {
        currentLength = _controller.text.length;
      });
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  List<String> rCarBrand = ['Tesla','Honda','Totota','Nissan','Mercedes'];
  List<String> lCarBrand = ['BMW','Ferrari','Bentley','Maybach','Lamborghini'];
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  Text("QENT Partner program",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey[200],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset("images/icon-logo/user img.png"),
                          Positioned(
                            right: 0,
                            bottom: 2,
                            child: Container(
                              child: Image.asset("images/icon-logo/Camera.png"),
                            )
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Car owner information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
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
                        decoration: InputDecoration(
                          hintText: "Email Address",
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Contact",
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Diving licenses Number",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Car information",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: carDetailType.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            }
                          );
                        },
                        child: Container(
                          width: 159,
                          height: 45,
                          margin: EdgeInsets.only(right: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == currentIndex
                               ? Colors.black
                               : Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),                              
                              child:  Center(
                                child: Text('${carDetailType[index]}',style: TextStyle(fontSize: 12,
                                color: index == currentIndex
                                  ? Colors.white
                                  : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                   ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 237,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Regular Cars Brand",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                Text("Luxury Cars Brand",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey.shade300,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 185,
                                width: 170,
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    height: 40,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: rCarBrand.length,
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            rCarBrandIndex = index;
                                          }
                                          );
                                        },
                                          child: Container(
                                            width: 159,
                                            height: 37,
                                            margin: EdgeInsets.only(right: 0),
                                            decoration: BoxDecoration(
                                              color: index == rCarBrandIndex
                                              ? Colors.grey.shade300
                                              : Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 0, right: 0),                              
                                              child:  Center(
                                                child: Text('${rCarBrand[index]}',style: TextStyle(fontSize: 12,
                                                  color:Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,bottom: 15),
                                child: Container(
                                  height: 155,
                                  width: 2,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              Container(
                                height: 185,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: lCarBrand.length,
                                      itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            lCarBrandIndex = index;
                                          }
                                          );
                                        },
                                          child: Container(
                                            width: 159,
                                            height: 37,
                                            margin: EdgeInsets.only(right: 0),
                                            decoration: BoxDecoration(
                                              color: index == lCarBrandIndex
                                              ? Colors.grey.shade300
                                              : Colors.transparent,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 0, right: 0),                              
                                              child:  Center(
                                                child: Text('${lCarBrand[index]}',style: TextStyle(fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade800)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 8,bottom: 8),
                                child: SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Upload Cars images",
                                      hintStyle: TextStyle(fontSize: 15),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  children: [
                                    Image.asset("images/icon-logo/Group 1094.png",height: 20,),
                                    SizedBox(width: 13,),
                                    Image.asset("images/icon-logo/Group 1093.png",height: 20,),
                                    SizedBox(width: 15,),
                                    Container(
                                      height: double.infinity,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey.shade300)
                                      ),
                                      child: Center(child: Text("+",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w300,color: Colors.grey.shade500),)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
                SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Car Registration Number",
                          hintStyle: TextStyle(fontSize: 15),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Colors",style: TextStyle(fontWeight: FontWeight.w900),),
                        Text("See All",style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () => _onItemTapped(0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey.shade400)
                                ),
                                child: Icon(Icons.check,color: _selectedIndex == 0 ?Colors.black : Colors.white,)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("White",style: TextStyle(fontSize: 12),),
                          ],
                        ),
                    
                        Row(
                          children: [
                            InkWell(
                              onTap: () => _onItemTapped(1),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(color: Colors.grey.shade900)
                                ),
                                child: Icon(Icons.check,color: _selectedIndex == 1 ?Colors.black : Colors.grey.shade400,)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Gray",style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => _onItemTapped(2),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(color: Colors.black)
                                ),
                                child: Icon(Icons.check,color: _selectedIndex == 2 ?Colors.white : Colors.blue,)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Blue",style: TextStyle(fontSize: 12),),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => _onItemTapped(3),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(color: Colors.grey.shade400)
                                ),
                                child: Icon(Icons.check,color: _selectedIndex == 3 ?Colors.white : Colors.black,)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text("Black",style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Fuel Type",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      ),
                      SizedBox(height: 10,),
                       Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: FuelType.length,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    fuelIndex = index;
                                  }
                                  );
                                },
                              child: Container(
                                margin: EdgeInsets.only(right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  color: index == fuelIndex
                                  ? Colors.black
                                  : Colors.transparent,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 18, right: 18),                              
                                    child:  Center(
                                      child: Text('${FuelType[index]}',style: TextStyle(fontSize: 12,
                                        color: index == fuelIndex
                                        ? Colors.white
                                        : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ),
                        ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Stack(
                          children: [
                            TextField(
                            maxLines: 4,
                            maxLength: MaxLength,
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: "Enter your car ability, durability ,ect message here.......",
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              counterText: "",
                            ),
                          ),
                          Positioned(
                            right: 12,
                            bottom: 7,
                            child: Text("$currentLength / $MaxLength",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),)
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Colors.black,
                          onChanged: (newBool){
                            setState(() {
                                isChecked = newBool;
                              }
                            );
                          }
                        ),
                        Text("Tearms & continue",style: TextStyle(fontSize: 14,color: Colors.grey.shade600,fontWeight: FontWeight.w600),),
                        SizedBox(width: 10,),
                        Image.asset("images/icon-logo/Vector (5).png"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PartenerOtpConfirmationPage()));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                        ),
                        child: Center(child: Text("Submit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}