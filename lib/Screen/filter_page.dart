import 'dart:ui';

import 'package:car_rental/Screen/booking_page.dart';
import 'package:car_rental/Screen/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String> carType = ['All Cars', 'Regular Cars', 'Luxury Cars'];
  List<String> timeType = ['Hour', 'Day', 'Weekly','Monthly'];
  List<dynamic> siting = [2, 4, 5, 8];
  List<String> FuelType = ['Electric', 'Petrol', 'Diesel','Hybrid'];
  
  int sitingIndex = -1;
  int currentIndex = -1;
  int currentCategoryIndex = 0;
  int fuelIndex = -1;
  bool value = false;

   int _selectedIndex = -1;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  RangeValues values = const RangeValues(10, 230);
  RangeLabels labels = const RangeLabels('10', '230');

  DateTime today = DateTime.now(); 

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 1090,
            color: Colors.grey[400],
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 1070,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Image.asset("images/icon-logo/Vector (2).png",height: 30,)),
                          ),
                          Text("Filters",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),),
                          Text("          "),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.grey[200],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Type of Cars",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey.shade300,
                              )
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: carType.length,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    currentCategoryIndex = index;
                                  }
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 21),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: index == currentCategoryIndex
                                  ? Colors.black
                                  : Colors.transparent,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 20),                              
                                    child:  Center(
                                      child: Text('${carType[index]}',style: TextStyle(fontSize: 12,
                                        color: index == currentCategoryIndex
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
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 2,
                            width: double.infinity,
                            color: Colors.grey[200],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text("Price range",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                        ),
                        Stack(
                          children: [
                            Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Image.asset("images/icon-logo/Range Candel.png",height: 100,),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: RangeSlider(
                                values: values, 
                                min: 10,
                                max: 230,
                                // divisions: 200,
                                labels: labels,
                                activeColor: Colors.white,
                                inactiveColor: Colors.grey[200],
                                onChanged: (value){
                                  setState(() {
                                    values = value;
                                    // labels = RangeLabels(
                                    //   '\$${value.start.toInt().toString()}',
                                    //   '\$${value.end.toInt().toString()}'
                                    // );
                                  }
                                );
                              }
                             )
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Minimum",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                                  SizedBox(height: 5,),
                                  Container(
                                    height: 35,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.grey.shade300
                                      )
                                    ),
                                    child: Center(child: Text('\$${values.start.toInt().toString()}')),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Maximum",style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                                  SizedBox(height: 5,),
                                  Container(
                                    height: 35,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Colors.grey.shade300
                                      )
                                    ),
                                    child: Center(child: Text('\$${values.end.toInt().toString()}')),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.grey[200],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Rental Time",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      ),
                      SizedBox(height: 15,),
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
                                  : Colors.transparent,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pick up and Drop Date",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                            InkWell(
                              onTap: () {
                                _showDialog();
                              },
                              child: Row(
                                children: [
                                  Image.asset("images/icon-logo/Group 660.png"),
                                  SizedBox(width: 5,),
                                  Text("05,Jun,2024",style: TextStyle(fontSize: 12,color: Colors.grey[500]),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Car Location",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Shore Dr,Chicago 0062 Usa",
                            hintStyle: TextStyle(fontSize: 13,color: Colors.grey[500]),
                            prefixIcon: Image.asset("images/icon-logo/Group 661.png"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Colors",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
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
                        child: Text("Siting Capacity",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                      ),
                      SizedBox(height: 10,),
                       Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: siting.length,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    sitingIndex = index;
                                  }
                                  );
                                },
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  color: index == sitingIndex
                                  ? Colors.black
                                  : Colors.transparent,
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 32, right: 32),                              
                                    child:  Center(
                                      child: Text('${siting[index]}',style: TextStyle(fontSize: 12,
                                        color: index == sitingIndex
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
                      Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.grey.shade200,
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  currentIndex = -1;
                                  fuelIndex = -1;
                                  sitingIndex = -1;
                                  _selectedIndex = -1;
                                  values = RangeValues(10, 230);
                                  value = false;
                                });
                              },
                              child: Text("Clear All",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),)),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black
                                ),
                                child: Center(child: Text("Show 100+ Cars",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w700),)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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