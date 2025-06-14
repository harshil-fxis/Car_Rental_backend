import 'package:car_rental/Model/car_model.dart';
import 'package:car_rental/Model/review_model.dart';
import 'package:car_rental/Screen/car_detail_page.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  final Car car;
  const ReviewPage({Key? key, required this.car})
      : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  // List<Review> reviews = [];
  // final List<Map<String, dynamic>> review = [
  //   {
  //     "image": "images/icon-logo/Ellipse 201.png",
  //     "name": "Mr.Jack",
  //     "rate": 5,
  //     "detail": "The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.",
  //     "time": "Today",
  //   },
  //   {
  //     "image": "images/icon-logo/Ellipse 202.png",
  //     "name": "Robert",
  //     "rate": 5,
  //     "detail": "The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.",
  //     "time": "Yesterday"
  //   },
  //   {
  //     "image": "images/icon-logo/Ellipse 201 (1).png",
  //     "name": "Julies",
  //     "rate": 5,
  //     "detail": "The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.",
  //     "time": "2 Weekes ago"
  //   },
  //   {
  //     "image": "images/icon-logo/Ellipse 201 (3).png",
  //     "name": "Mr.Jon",
  //     "rate": 5,
  //     "detail": "The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.",
  //     "time": "3 Weekes ago"
  //   },
  //   {
  //     "image": "images/icon-logo/Ellipse 201 (2).png",
  //     "name": "Hanrick",
  //     "rate": 3,
  //     "detail": "The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.",
  //     "time": "3 Weekes ago"
  //   },
  // ];

  TextEditingController _searchController = TextEditingController();
  List<Review> filteredReviews = [];


  @override
  void initState(){
    super.initState();
    filteredReviews = widget.car.reviews;
    _searchController.addListener((){
      _updateFilteredReviews();
    });
  }




  void _updateFilteredReviews(){
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty){
        filteredReviews = widget.car.reviews;
      }
      else{
        filteredReviews = widget.car.reviews.where((review) => review.Name.toLowerCase().contains(query)).toList();
      } 
    });
     
  }

  double getAverageRating(List<Review> reviews){
    if(reviews.isEmpty) return 0.0;
    double total = reviews.fold(0.0, (sum, review) => sum + review.rate);
    return total / reviews.length;
  }

  final int maxRate = 5;
  @override
  Widget build(BuildContext context) {
    final double averageRating = getAverageRating(widget.car.reviews);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailPage(car: widget.car,)));
                }, 
                child: Image.asset("images/icon-logo/Group 197.png",height: 40,)),
                Text("Reviews",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                Image.asset("images/icon-logo/Group 198.png",height: 40,),
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey[200],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Image.asset("images/icon-logo/rating.png",),
                    SizedBox(width: 10,),
                    Text("${averageRating} Reviews (${widget.car.reviews.length})",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Image.asset("images/icon-logo/Group 159.png"),
                      hintText: "Find reviews........",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade500,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  color: Colors.grey[100],
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: filteredReviews.length,
                    itemBuilder: (context,index){
                      final review = filteredReviews[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                        child: Container(
                          height: 150,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey.shade500)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset("${review.Image}",height: 30,),
                                          SizedBox(width: 7),
                                          Text("${review.Name}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('Time',style: TextStyle(fontSize: 12))
                                          // Text("${review[index]['time']}",style: TextStyle(fontSize: 12),)
                                        ],
                                      ),               
                                    ],
                                  ),
                                  Container(
                                    height: 30,
                                    width: double.infinity,
                                    child: Row(
                                      children: List.generate(maxRate,(index){
                                        final rating = review.rate;
                                        return Image.asset(
                                          index < rating
                                          ? "images/icon-logo/rating.png"
                                          : "images/icon-logo/Vector.png",
                                        );
                                      }),
                                    )
                                  ),
                                  Container(
                                    height: 55,
                                    width: 290,
                                    child: Text("${review.detail}",style: TextStyle(fontSize: 12),))
                                  ],
                            ),
                          ),
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