import 'package:car_rental/Screen/bottom_navbar_page.dart';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/filter_page.dart';
import 'package:car_rental/Screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int currentCategoryIndex = 0;
  final List<Map<String, String>> carLogo = [
    {"image": "images/icon-logo/Icon (4).png", "name": "All"},
    {"image": "images/carLogo/Icon.png", "name": "Ferrari"},
    {"image": "images/carLogo/Icon (3).png", "name": "Tesla"},
    {"image": "images/carLogo/Icon (1).png", "name": "BMW"},
    {"image": "images/carLogo/Icon (2).png", "name": "Lamborghini"},
  ];

  final List<Map<String, dynamic>> cars = [
    {
      "image": "images/cars/images__5_-removebg-preview 2.png",
      "title": "Tesla Model S",
      "rate": 5.0,
      "city": "Chicago ,USA",
      "price": 100
    },
    {
      "image": "images/cars/car img.png",
      "title": "Lamborghini Aventador",
      "rate": 4.9,
      "city": "Washington DC",
      "price": 100
    },
    {
      "image": "images/cars/pngimg.com - ferrari_PNG10654 1 (1).png",
      "title": "Ferrari LaFerrari",
      "rate": 5.0,
      "city": "Washington DC",
      "price": 100
    },
    {
      "image": "images/cars/pngimg.com - ferrari_PNG10654 1.png",
      "title": "BMW GTS3 M2",
      "rate": 5.0,
      "city": "New York,USA",
      "price": 100
    },
  ];

  List<Map<String,dynamic>> fiteredCars = [];

  void initState(){
    setState(() {
      super.initState();
      fiteredCars = cars;
    });
  }

  // void filterCars(String query){
  //   setState(() {
  //     fiteredCars = cars.where((car){
  //       return car['title'].toLoweCase().contains(query.toLowerCase());
  //     }).toList();
  //   });
  // }


  final List<Map<String, dynamic>> PopCar = [
    {
      "image": "images/cars/white-ferrari-ff-car 1.png",
      "title": "Ferrari LaFerrari",
      "rate": 5.0,
      "city": "Washington DC",
      "price": 100
    },
    {
      "image": "images/cars/m8.png",
      "title": "BMW GTS3 M2",
      "rate": 5.0,
      "city": "New York,USA",
      "price": 100
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.grey[50],
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
                Text("Search",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                Image.asset("images/icon-logo/Group 198.png",height: 40,),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            color: Colors.grey[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade500)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("images/icon-logo/Group 159.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Search your dream car...."),
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context,rootNavigator: true).push(new CupertinoPageRoute<bool>(fullscreenDialog: true,builder: (BuildContext context) => FilterPage()));
                        },
                        child: Image.asset("images/icon-logo/filters  section.png")),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: 38,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: carLogo.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              currentCategoryIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: index == currentCategoryIndex
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 9),
                              child: Row(
                                children: [
                                  Image.asset(
                                    '${carLogo[index]['image']}',
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    '${carLogo[index]['name']}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: index == currentCategoryIndex
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Recommend For You",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: Container(
                    height: 420,
                    width: double.infinity,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          mainAxisExtent: 170,// Display two products per row
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.99,
                          // Aspect ratio for better layout
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: cars.length,
                        itemBuilder: (context, index) {
                           return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(cars: cars,)));
                            },
                             child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey.shade300)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 96,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            color: Colors.grey[200],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3,
                                                right: 3,
                                                top: 10,
                                                bottom: 10),
                                            child: Image.asset(
                                              '${cars[index]['image']}',
                                              height: 65,
                                              fit: BoxFit.fill,
                                            ),
                                          )),
                                          Positioned(
                                            right: 5,
                                            top: 7,
                                            child: Image.asset("images/icon-logo/i con (6).png",height: 20,))
                                      ],
                                    ),
                                    Container(
                                      height: 107,
                                      width: double.infinity,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${cars[index]['title']}",
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "${cars[index]['rate']}",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset(
                                                "images/icon-logo/Icons (1).png",
                                                height: 10,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "images/icon-logo/Group 200.png",
                                                height: 10,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "${cars[index]['city']}",
                                                style: TextStyle(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "\$${cars[index]['price']}/Day",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  child: Center(child: Text("Book now",style: TextStyle(fontSize: 12,color: Colors.white),)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                           );
                        }),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Our Popular Cars",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Container(
                    height: 85,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: PopCar.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 80,
                            width: 250,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,top: 5,bottom: 5),
                                  child: Image.asset("${PopCar[index]['image']}",height: 70,width: 120,),
                                ),
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${PopCar[index]['title']}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Text("${PopCar[index]['rate']}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,color: Colors.grey[600]),),
                                          SizedBox(width: 5,),
                                          Image.asset("images/icon-logo/Icons (1).png")
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("\$${PopCar[index]['price']}/Day",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
