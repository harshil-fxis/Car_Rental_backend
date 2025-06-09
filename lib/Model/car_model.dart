import 'package:car_rental/Model/car_owner_model.dart';
import 'package:car_rental/Model/review_model.dart';

class Car{
  final String name;
  final int price;
  final List<String> image;
  final String details;
  final String city;
  final double rating;
  final int seats;
  final String carColor;
  final String Fuel;
  final String maxSpeed;
  final String engineOut;
  final String mileage;
  final String advance;
  final String features;
  final CarOwner owner;
  final List<Review> reviews;

  Car({
    required this.name,
    required this.price,
    required this.image,
    required this.details,
    required this.city,
    required this.rating,
    required this.seats,
    required this.carColor,
    required this.Fuel,
    required this.maxSpeed,
    required this.engineOut,
    required this.mileage,
    required this.advance,
    required this.features,
    required this.owner,
    required this.reviews,
  });
}