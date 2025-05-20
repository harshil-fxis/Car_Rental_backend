import 'dart:ui';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/payment_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingPage extends StatefulWidget {
  final dynamic cars;
  const BookingPage({Key? key, required this.cars})
      : super(key: key);


  @override
  State<BookingPage> createState() => _BookingPageState();
}



class _BookingPageState extends State<BookingPage> {

  DateTime today = DateTime.now();
  List<String> cars = [];
  List<String> timeType = ['Hour', 'Day', 'Weekly','Monthly'];
  List<Map<String,dynamic>> genderType = [
    {'name':'male','image':'images/icon-logo/Group 913 (1).png'},
    {'name':'Female','image':'images/icon-logo/Group.png'},
    {'name':'Others','image':'images/icon-logo/Group 913.png'},
  ];

  int genderIndex = -1;
  int currentIndex = -1;
  bool _switchValue = true;


  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Time",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Time Selector (Example)
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 37,
                              width: 135,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                             
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/icon-logo/icon (13).png"),
                                    SizedBox(width: 10,),
                                    Image.asset("images/icon-logo/Line 9.png"),
                                    SizedBox(width: 10,),
                                    Text(
                                      "10 : 30 am",
                                      style: TextStyle(fontSize: 13,color: Colors.white),
                                    ),
                                  ],
                                ),
                              
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 37,
                              width: 135,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade500),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/icon-logo/icon (13).png"),
                                    SizedBox(width: 10,),
                                    Image.asset("images/icon-logo/Line 9 (1).png"),
                                    SizedBox(width: 10,),
                                    Text(
                                      "05 : 30 pm",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Calendar (Scrollable)
                    SizedBox(
                      height: 300, // Adjust height as needed
                      child: TableCalendar(
                        locale: "en_US",
                        focusedDay: today,
                        rowHeight: 35,
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        selectedDayPredicate: (day) {
                          return isSameDay(today, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            today = selectedDay;
                          });
                        },
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                        ),
                        calendarStyle: CalendarStyle(
                          // selectedDecoration: BoxDecoration(
                          //   color: Colors.black,
                          //   shape: BoxShape.circle,
                          // ),
                          todayDecoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Buttons (Cancel / Done)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 37,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade500)
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                          },
                          child: Container(
                            height: 37,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Done",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
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
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(cars: cars,)));
                    }, 
                    child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                    Text("Booking Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
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
                  color: Colors.grey[300],
                  width: double.infinity,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 105,
                      color: Colors.black,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 105,
                      color: Colors.black,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Booking details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                    SizedBox(width: 40,),
                    Text("Payment methods",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                    SizedBox(width: 40,),
                    Text("confimation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Book with driver",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 13),),
                              Text("Don't have a driver? book with driver.",style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w700,fontSize: 13),),
                            ],
                          ),
                          Transform.scale(
                            scale: 0.9,
                            child: CupertinoSwitch(
                              value: _switchValue, 
                              onChanged: (value){
                                setState(() {
                                  _switchValue = value;
                                });
                              }),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Full Name*",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Image.asset("images/icon-logo/Group 860.png"),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.grey.shade500),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email Address*",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Image.asset("images/icon-logo/Group 861.png"),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.grey.shade500),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Contact*",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Image.asset("images/icon-logo/Vector (3).png"),
                        hintStyle: TextStyle(fontSize: 13,color: Colors.grey.shade500),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Gender",style: TextStyle(fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 37,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: genderType.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        setState(() {
                          genderIndex = index;
                        }
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 35),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                        color: index == genderIndex
                          ? Colors.black
                          : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),                              
                          
                            child: Row(
                              children: [
                                Image.asset("${genderType[index]['image']}",color: index == genderIndex
                                    ? Colors.white
                                    : Colors.grey.shade700,),
                                SizedBox(width: 7,),
                                Text('${genderType[index]['name']}',style: TextStyle(fontSize: 12,
                                  color: index == genderIndex
                                    ? Colors.white
                                    : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Rental Date & Time",style: TextStyle(fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: timeType.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
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
                          color: index == currentIndex
                            ? Colors.black
                            : Colors.white,
                          ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),                              
                              child:  Center(
                                child: Text('${timeType[index]}',style: TextStyle(fontSize: 12,
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
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: InkWell(
                    onTap: (){
                      _showDialog();
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Pick up Date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Image.asset("images/icon-logo/Group 660.png"),
                                    SizedBox(width: 5,),
                                    Text("19/ January /2024",style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.w900),)
                                  ],
                                ),
                              ],
                            ),
                            Center(child: Text("|",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w100,color: Colors.grey.shade500),)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Return Date",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Image.asset("images/icon-logo/Group 660.png"),
                                    SizedBox(width: 5,),
                                    Text("22/ January /2024",style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontWeight: FontWeight.w900),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Car Location",style: TextStyle(fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Shore Dr.Chicago 0062 Usa",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.grey.shade500),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Image.asset("images/icon-logo/Group 661 (1).png"),
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(cars: cars)));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(child: Text("\$1400 Pay Now",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}