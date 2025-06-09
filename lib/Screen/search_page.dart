import 'dart:ffi';
import 'dart:math';
import 'package:car_rental/Controller/car_list_controller.dart';
import 'package:car_rental/Model/car_brand_model.dart';
import 'package:car_rental/Model/car_model.dart';
import 'package:car_rental/Screen/bottom_navbar_page.dart';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/filter_page.dart';
import 'package:car_rental/Screen/global_state.dart';
import 'package:car_rental/Screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchPage extends StatefulWidget {
  final int? minPrice;
  final int? maxPrice;
  final String? selectedColor;
  final int? siting;
  final String? fuel;
  const SearchPage({super.key,this.minPrice,this.maxPrice,this.selectedColor,this.siting,this.fuel});
  

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String selectedCountry = '';
  String selectedBrand = 'ALL';
  List<Car> filteredCars = [];
  late String selectedCountri;
  late List<CarBrand> brandList = [];
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';


  @override
  void initState(){
    super.initState();
    // fiteredCars = cars;

    selectedCountri = AppState.selectedCountri.value ?? '';
    brandList = carDataByCountry[selectedCountri] ?? [];
    _updateFilteredCars();
    _searchController.addListener((){
      setState(() {
       _searchQuery = _searchController.text.trim().toLowerCase();
       _updateFilteredCars();
    });
    });
  }

  void _updateFilteredCars(){
    if(selectedBrand == 'ALL'){
      filteredCars = brandList.expand((brand) => brand.cars).toList();
    }
    else{
      final selected = brandList.firstWhere((brand) => brand.nameBrand == selectedBrand,
      orElse: () => CarBrand(nameBrand: '', imageBrand: '', cars: []),
      );
      filteredCars = selected.cars;
    }


    if (widget.minPrice != null && widget.maxPrice != null){
      filteredCars = filteredCars.where((car) => car.price >= widget.minPrice! && car.price <= widget.maxPrice!).toList();
    }

    if (widget.selectedColor != null){
      filteredCars = filteredCars.where((car) => car.carColor == widget.selectedColor!).toList();
    }

    if (widget.siting != null){
      filteredCars = filteredCars.where((car) => car.seats == widget.siting!).toList();
    }

    if (widget.fuel != null){
      filteredCars = filteredCars.where((car) => car.Fuel == widget.fuel!).toList();
    }

    if (_searchQuery.isNotEmpty){
      filteredCars = filteredCars.where((car) => car.name.toLowerCase().contains(_searchQuery)).toList();
    }

    // if(widget.selectedColor != null){
    //   filteredCars = filteredCars.where((car){
    //     return car.carColor == widget.selectedColor!;
    //     print('name: ${widget.selectedColor}');
    //   }).toList();
    // }
    filteredCars.shuffle(Random());
    setState(() {});
  }

  List<Car> allCars = [];
  List<Car> displayedCars = [];
  
  void _applyFilters(Map filters) {
    List<Car> filterd = allCars.where((car){
      bool matchesPrice = car.price >= filters['price'].start && car.price <= filters['price'].end;

      return matchesPrice;
    }).toList();

    setState(() {
      displayedCars = filterd;
    });
  }



  int currentCategoryIndex = 0;
  final List<Map<String, String>> carLogo = [
    {"image": "images/icon-logo/Icon (4).png", "name": "All"},
    {"image": "images/carLogo/Icon.png", "name": "Ferrari"},
    {"image": "images/carLogo/Icon (3).png", "name": "Tesla"},
    {"image": "images/carLogo/Icon (1).png", "name": "BMW"},
    {"image": "images/carLogo/Icon (2).png", "name": "Lamborghini"},
  ];

  // final List<Map<String, dynamic>> cars = [
  //   {
  //     "image": "images/cars/images__5_-removebg-preview 2.png",
  //     "title": "Tesla Model S",
  //     "rate": 5.0,
  //     "city": "Chicago ,USA",
  //     "price": 100
  //   },
  //   {
  //     "image": "images/cars/car img.png",
  //     "title": "Lamborghini Aventador",
  //     "rate": 4.9,
  //     "city": "Washington DC",
  //     "price": 100
  //   },
  //   {
  //     "image": "images/cars/pngimg.com - ferrari_PNG10654 1 (1).png",
  //     "title": "Ferrari LaFerrari",
  //     "rate": 5.0,
  //     "city": "Washington DC",
  //     "price": 100
  //   },
  //   {
  //     "image": "images/cars/pngimg.com - ferrari_PNG10654 1.png",
  //     "title": "BMW GTS3 M2",
  //     "rate": 5.0,
  //     "city": "New York,USA",
  //     "price": 100
  //   },
  // ];

  List<Map<String,dynamic>> fiteredCars = [];

  // void initState(){
  //   setState(() {
  //     super.initState();
  //     fiteredCars = cars;
  //   });
  // }

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
     final List<Map<String, String>> brandWithAll = [
      {
        'name' : 'ALL',
        'image' : 'images/icon-logo/Icon (4).png',
      },
      ...brandList.map((brand) => {
        'name' : brand.nameBrand,
        'image' : brand.imageBrand,
      }),
    ];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                      // images/icon-logo/Group 159.png
                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 20),
                        child: SizedBox(
                          height: 50,
                          width: 272,
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              prefixIcon: Image.asset('images/icon-logo/Group 159.png'),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Search your dream car....",
                              hintStyle: TextStyle(fontSize: 14),
                              // border: InputBorder.none
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0,
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
                      height: 43,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: brandWithAll.length,
                        itemBuilder: (context, index){
                          final brand = brandWithAll[index];
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  currentCategoryIndex = index;
                                  selectedBrand = brand['name']!;
                                  _updateFilteredCars();
                                  });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: index == currentCategoryIndex
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0, right: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            '${brand['image']}',
                                            height: 27,
                                            width: 27,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${brand['name']}',
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
                            );
                        },
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
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.99,
                          // Aspect ratio for better layout
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: filteredCars.length,
                        itemBuilder: (context, index) {
                          final car = filteredCars[index];
                           return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(car: car,)));
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
                                                left: 0,
                                                right: 0,
                                                top: 0,
                                                bottom: 0),
                                            child: Image.asset(
                                              '${car.image[0]}',
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
                                            "${car.name}",
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
                                                "${car.rating}",
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
                                                "${car.city}",
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
                                                  "\$${car.price}/Day",
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
    );
  }
}
