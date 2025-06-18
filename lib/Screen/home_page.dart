// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'dart:convert';
import 'dart:math';
import 'package:car_rental/Controller/car_list_controller.dart';
import 'package:car_rental/Model/car_brand_model.dart';
import 'package:car_rental/Model/car_model.dart';
import 'package:car_rental/Model/owner_and_car_model.dart';
import 'package:car_rental/Screen/global_state.dart';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:car_rental/Screen/filter_page.dart';
import 'package:car_rental/Screen/notification_page.dart';
import 'package:car_rental/Screen/profile_page.dart';
import 'package:car_rental/Screen/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  // final VoidCallback onSearchTap;
  final Function(int) onNavigate;
  const HomePage({Key? key,required this.onNavigate}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String selectedCountri;
  late List<CarBrand> brandList;
  List<Car> sortedCars = [];
  List<String> uniqueBrands = [];
  late Future<OwnerAndCarModel> ownerFuture;

  @override
  void initState(){
    super.initState();
    fetchOwnerAndCars();

    selectedCountri = AppState.selectedCountri.value ?? '';
    brandList = carDataByCountry[selectedCountri] ?? [];

    List<Car> allCars = [];
    for(var brand in brandList){
      allCars.addAll(brand.cars);
    }
    allCars.shuffle(Random());

    // sortedCars.sort((a, b) => b.rating.compareTo(a.rating));
    sortedCars = allCars.where((car) => car.rating == 5.0).toList();
  }

  // final List<Map<String,String>> carLogo = [
  //   {"image":"images/carLogo/Icon (3).png", "name":"Tesla"},
  //   {"image":"images/carLogo/Icon (2).png", "name":"Lamborghini"},
  //   {"image":"images/carLogo/Icon (1).png", "name":"BMW"},
  //   {"image":"images/carLogo/Icon.png", "name":"Ferrari"},
  // ];

  // final List<Map<String,dynamic>> cars = [
  //   {"image":"images/cars/white-ferrari-ff-car 1.png","title":"Ferrari-FF","rate":5.0,"city":"Washington DC","seats":4,"price":200},
  //   {"image":"images/cars/images__5_-removebg-preview 2.png","title":"Tesla Model S","rate":5.0,"city":"Chicago ,USA","seats":5,"price":100},
  //   {"image":"images/cars/white-ferrari-ff-car 1.png","title":"Ferrari-FF","rate":5.0,"city":"Washington DC","seats":4,"price":200},
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Colors.grey[50],
          title: Padding(
            padding: const EdgeInsets.only(top: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/icon-logo/Logo.png",height: 30,),
                Row(
                  children: [
                    InkWell(
                      onTap: () => widget.onNavigate(3),
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                      // },
                      child: Image.asset("images/icon-logo/Group 594.png",height: 40,)),
                    SizedBox(width: 7,),
                    InkWell(
                      onTap: () => widget.onNavigate(4),
                      // onTap: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      // },
                      child: AppState.profilePic.value != null ? Container(
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          radius: 80,
                            backgroundImage: NetworkImage("${ApiConfig.baseUrl}/uploads/${AppState.profilePic.value}"),
                          ),
                        )
                        : Container(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person,size: 25,),
                          ),
                        ),
                    )
                  ],
                ),
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
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => widget.onNavigate(1),
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                        // },
                        child: Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade500)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset("images/icon-logo/Group 159.png"),
                                SizedBox(width: 10,),
                                Text("Search your dream car...."),
                              ],
                            ),
                          )
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () {
                          Navigator.of(context,rootNavigator: true).push(new CupertinoPageRoute<bool>(fullscreenDialog: true,builder: (BuildContext context) => FilterPage()));
                        },
                        child: Image.asset("images/icon-logo/filters  section.png")),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Brands",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 10,),
                  Container(
                    height: 100,
                    // child: FutureBuilder<OwnerAndCarModel>(
                    //   future: ownerFuture,
                    //   builder: (context, snapshot) {
                        // if(snapshot.connectionState == ConnectionState.waiting){
                        //   return Center(child: CircularProgressIndicator());
                        // }else if(snapshot.hasError){
                        //   return Center(child: Text("ERROR: ${snapshot.error}"),);
                        // }else if(!snapshot.hasData || snapshot.data == null){
                        //   return Center(child: Text(" no data found"),);
                        // }else if(snapshot.data!.cars == null || snapshot.data!.cars!.isEmpty){
                        //   return Center(child: Text("No cars available"),);
                        // }
                        //   final cars = snapshot.data!.cars ?? [];

                        //   final brandName = cars
                        //     .map((car) => car.brandName ?? "")
                        //     .toSet()
                        //     .toList();
                        
                        child: ListView.builder(
                          scrollDirection:  Axis.horizontal,
                          itemCount: uniqueBrands.length,
                          itemBuilder: (context,index){
                            final brands = uniqueBrands[index];
                            final brand = brandList[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 20,left: 20),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(40)
                                      ),
                                      child: Center(child: Image.asset("images/carLogo/${brands.toLowerCase()}.png",height: 40,width: 40,))),
                                    SizedBox(height: 7,),
                                    Text(brands,style: TextStyle(fontSize: 12),),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                    //     }
                    // ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                              child: Text("Best Cars",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
                              child: Text("View All",style: TextStyle(fontSize: 11,color: Colors.grey[500],fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                          child: Text("Available",style: TextStyle(color: Colors.grey[500],fontSize: 11,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 195,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: sortedCars.length,
                              itemBuilder: (context,index){
                                final car = sortedCars[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarDetailPage(car: cars,),fullscreenDialog: true,));
                                    },
                                    child: Container(
                                      height: 70,
                                      width: 162,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey.shade300)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 95,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                                  color: Colors.grey[200],
                                                ),
                                                // child: Padding(
                                                  // padding: const EdgeInsets.only(left: 3,right: 3,top: 10,bottom: 10),
                                                  child: Image.asset(car.image[0],height: 65,fit: BoxFit.fill,),
                                                // )
                                              ),
                                              Positioned(
                                                right: 5,
                                                top: 5,
                                                child: Image.asset("images/icon-logo/i con (6).png",height: 23,))
                                            ],
                                          ),
                                          Container(
                                            height: 95,
                                            width: double.infinity,
                                            padding: EdgeInsets.all(7),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(car.name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Text("${car.rating.toDouble()}",style: TextStyle(fontSize: 12),),
                                                    SizedBox(width: 5,),
                                                    Image.asset("images/icon-logo/Icons (1).png",height: 10,)
                                                  ],
                                                ),
                                                SizedBox(height: 5,),
                                                Row(
                                                  children: [
                                                    Image.asset("images/icon-logo/Group 200.png",height: 10,),
                                                    SizedBox(width: 5,),
                                                    Text(car.city,style: TextStyle(fontSize: 10),),
                                                  ],
                                                ),
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Image.asset("images/icon-logo/Group 184.png",height: 10,),
                                                          SizedBox(width: 5,),
                                                          Text("${car.seats.toString()} Seats",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.grey[500]),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset("images/icon-logo/Group 358.png",height: 13,),
                                                          SizedBox(width: 3,),
                                                          Text("\$${car.price.toString()}/Day",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900),),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),                                        
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Text("Nearby",style: TextStyle(fontWeight: FontWeight.w900),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,),
                              child: Text("View All",style: TextStyle(fontSize: 11,color: Colors.grey[500],fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                                child: Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30,bottom: 10),
                                    child: Image.asset("images/cars/m8.png",height: 95,fit: BoxFit.fill,),
                                  ),
                                ),
                              );
                            }
                          ),
                        ),
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),

    );
  }

  Future<void> fetchOwnerAndCars() async{
    final Response = await http.get(Uri.parse("${ApiConfig.baseUrl}/allowner"));
    if(Response.statusCode == 200){
      final List<dynamic> data = jsonDecode(Response.body);
      List<OwnerAndCarModel> owners = data
        .map((Item) => OwnerAndCarModel.fromJson(Item))
        .toList();

      Set<String> brands = {};

      for(var owner in owners){
        for(var car in owner.cars ?? []){
          if(car.brandName != null){
            brands.add(car.brandName!);
          }
        }
      }
      setState(() {
        uniqueBrands = brands.toList();
      });
    }else{
      throw Exception('Failed to load owner and cars');
    }
  }
}