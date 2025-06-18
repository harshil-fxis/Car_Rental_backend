import 'dart:convert';
// import 'dart:ffi';
import 'dart:io';
import 'dart:ui';
import 'package:car_rental/Screen/global_state.dart';
import 'package:car_rental/Screen/home_page.dart';
import 'package:car_rental/Screen/partener_otp_confirmation_page.dart';
import 'package:car_rental/Screen/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';


enum TabType { brand, model }

class PartnerForm extends StatefulWidget {
  const PartnerForm({super.key});

  @override
  State<PartnerForm> createState() => _PartnerFormState();
}

class _PartnerFormState extends State<PartnerForm> {
  bool isLoading = false;
  PickedFile? imageFile;
  String? postBrand;
  String? postFuel;
  int? postSeat;
  List<String> carDetailType = ['Car Brand' ,'Car Model'];
  List<String> FuelType = ['Electric', 'Petrol', 'Diesel','Hybrid'];
  List<dynamic> siting = [2, 4, 5, 7];
  int sittingIndex = -1;
  int fuelIndex = 2;
  int currentIndex = 0;
  int rCarBrandIndex = -1; 
  int lCarBrandIndex = 2; 
  final int MaxLength = 1000;
  int currentLength = 0;
  bool? isChecked = false;
  String? selectedColorName;
  List<Map<String,dynamic>> colorOptions = [
    {'name':'White','color':Colors.white },
    {'name':'Gray','color':Colors.grey,},
    { 'name':'Blue','color':Colors.blue},
    {'name':'Black','color':Colors.black},
    {'name':'Red','color':Colors.red}
  ];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController drivingLicensesController = TextEditingController();
  TextEditingController carNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController mileageController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController speedController = TextEditingController();
  TextEditingController engineOutController = TextEditingController();
  TextEditingController advanceController = TextEditingController();
  TextEditingController featureController = TextEditingController();
  TextEditingController registrationController = TextEditingController();
  TextEditingController detailController = TextEditingController();
  
  
  
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // File? image;
  // Future<void> _pickFromCamera() async{
  //   final image = await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (image == null) return;

  //   final imageTemporary = File(image.path);
  //   setState(() => this.image = imageTemporary);
  // }

  // int selectedTab = 0;
  List<XFile> selectedImages = [];
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickFromgallary() async{
    final List<XFile>? images = await _picker.pickMultiImage();
    if(images != null && images.length ==3){
      setState(() {
        selectedImages = images;
      });
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please select exactly 3 images.")),
      );
    }
  }

  Future<void> _pickProfile() async{
    final XFile? PickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if(PickedFile != null){
      setState(() {
        _image = File(PickedFile.path);
      });
    }
  }


  // Future<void> _pickFromGallery() async{
  //   final images = await _picker.pickImage(source: ImageSource.gallery);
  //   if (images != null && _selectedImages.length < 3){
  //     setState(() => _selectedImages.add(File(images.path)));
  //   }
  //   else{
  //     showmessage("Please select exactly 3 images");
  //       print("error");
  //   }
  // }
  //  void showmessage(message){
  //   var snackBar = SnackBar(content: Text(message));
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }


  @override
  void initState(){
    super.initState();
    detailController.addListener((){
      setState(() {
        currentLength = detailController.text.length;
      });
    });
  }

  @override
  void dispose(){
    detailController.dispose();
    super.dispose();
  }

  TabType selectedTab = TabType.brand;
  List<String> rCarBrand = ['Honda','Toyota','Nissan','Suzuki','Mahindra','Hyundai','Tata','Kia'];
  List<String> lCarBrand = ['Tesla','BMW','Ferrari','Bentley','Maybach','Lamborghini','Mercedes'];
  String? selectedBrand;

  void selectBrand(String brand){
    setState(() {
      selectedBrand = brand;
    });
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
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      
                    },
                    // onTap: () {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(onNavigate: null)));
                    // },
                    // onTap: () => onNavigate(0),
                  //   onTap: (){
                  //   // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  // }, 
                  child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                  Text("QENT Partner program",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  Image.asset("images/icon-logo/Group 198.png",height: 40,),
                ],
            ),
          ),
        ),
        body: Center(
          child: isLoading ? CircularProgressIndicator()
          : SingleChildScrollView(
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
                    imageProfile(),
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
                          controller: nameController,
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
                          controller: emailController,
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
                          controller: contactController,
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
                          controller: drivingLicensesController,
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
                    if (currentIndex == 0)buildCarBrandSection()else buildCarModelSection(),
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
                                      InkWell(
                                        // onTap: _pickFromCamera,
                                        child: Image.asset("images/icon-logo/Group 1094.png",height: 20,)),
                                      SizedBox(width: 13,),
                                      InkWell(
                                        onTap: _pickFromgallary,
                                        child: Image.asset("images/icon-logo/Group 1093.png",height: 20,)),
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
                          controller: registrationController,
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
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(colorOptions.length, (index){
                              final item = colorOptions[index];
                              
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                    selectedColorName = item['name'];
                                  });
                                },
                                child: Padding(padding: EdgeInsets.only(left: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey
                                          ),
                                          color: item['color'],
                                          shape: BoxShape.circle
                                        ),
                                        child: _selectedIndex == index ? Icon(Icons.check, size: 18,color: _selectedIndex == 3 ?Colors.white : Colors.black,)
                                        : null
                                      ),
                                      SizedBox(width: 7,),
                                      Text(item['name'],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                                      SizedBox(width: 5,)
                                    ],
                                  ),
                                ),
                              );
                            }),
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
                                      postFuel = FuelType[index];
                                      print(postFuel);
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
                              controller: detailController,
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
                        onTap: uploadCarAndOwner,
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
      ),
    );
  }

  Widget imageProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            _image != null ? Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(_image!),
              ),
            )
            : Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: Icon(Icons.person,size: 50,),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 2,
              child: InkWell(
                onTap: _pickProfile,
                child: Container(
                  child: Image.asset("images/icon-logo/Camera.png"),
                ),
              )
            )
          ],
        ),
      ],
    );
  }

  

  Widget bottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: <Widget>[
          Text("Choose profile photo",style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.camera)
              ),
              InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.image)
              ),
              
            ],
          )
        ],
      ),
    );
  }

  Widget buildCarBrandSection(){
    return Padding(
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
                                            lCarBrandIndex = -1;
                                            print("${rCarBrand[index]}");
                                            selectedBrand = rCarBrand[index];
                                            selectedBrand == -1 ? postBrand = lCarBrand[index] :  postBrand = rCarBrand[index];
                                            print(" brand :${postBrand}");
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
                                            rCarBrandIndex = -1;
                                            print("${lCarBrand[index]}");
                                            selectedBrand = lCarBrand[index];
                                            selectedBrand == -1 ? postBrand = rCarBrand[index] :  postBrand = lCarBrand[index];
                                            print(" brand :${postBrand}");
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
                  );
  }

  Widget buildCarModelSection(){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TextField(
              controller: carNameController,
              decoration: InputDecoration(
                hintText: "Car Name",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Car Price",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 0,right: 0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: siting.length,
                itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    sittingIndex = index;
                    postSeat = siting[index];
                    print(postSeat);
                  });
                },
                child: Container(
                  width: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  color: index == sittingIndex
                    ? Colors.black
                    : Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),                              
                    child:  Center(
                      child: Text('${siting[index]}',style: TextStyle(fontSize: 12,
                      color: index == sittingIndex
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
          SizedBox(
            height: 50,
            child: TextField(
              controller: mileageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Mileage",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: cityController,
              decoration: InputDecoration(
                hintText: "City",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: speedController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Max Speed",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: engineOutController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "engineOut",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: advanceController,
              decoration: InputDecoration(
                hintText: "advance",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: TextField(
              controller: featureController,
              decoration: InputDecoration(
                hintText: "feature",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> uploadCarAndOwner() async{
    setState(() => isLoading = true);
    late String ownerEmail;
    final String url ='${ApiConfig.baseUrl}/OwnerWithCars';
    final request = http.MultipartRequest("POST",Uri.parse(url));
      request.files.add(await http.MultipartFile.fromPath('profilePic', _image!.path));
      request.fields['name'] = nameController.text.trim();
      request.fields['email'] = emailController.text.trim();
      request.fields['contact'] = contactController.text.trim();
      request.fields['licenseNo'] = drivingLicensesController.text.trim();
      request.fields['brandName'] = postBrand.toString();      
      request.fields['carName'] = carNameController.text.trim();
      request.fields['price'] = priceController.text.trim();
      request.fields['seats'] = postSeat.toString();
      request.fields['mileage'] = mileageController.text.trim();
      request.fields['city'] = cityController.text.trim();
      request.fields['maxSpeed'] = speedController.text.trim();
      request.fields['engineOut'] = engineOutController.text.trim();
      request.fields['advance'] = advanceController.text.trim();
      request.fields['feature'] = featureController.text.trim();
      request.fields['color'] = selectedColorName.toString();
      request.fields['fuel'] = postFuel.toString();
      request.fields['registrationNo'] = registrationController.text;
      request.fields['detail'] = detailController.text.trim();

    if(selectedImages.length != 3){
      print("Must select exactly 3 images");
      return;
    }

    for(var image in selectedImages){
      request.files.add(await http.MultipartFile.fromPath('images', image.path));
    }
      
    var response = await request.send();
    if(response.statusCode == 200){
      ownerEmail = emailController.text.trim();
      AppState.ownerEmail.value = ownerEmail.toString();
      print("gloable email: ${AppState.ownerEmail.value}");
      print("car uploaded successfully");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PartenerOtpConfirmationPage()));
    }else{
      print("uploaded failed ${response.statusCode}");
    }
  }
}