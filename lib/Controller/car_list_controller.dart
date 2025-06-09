import 'package:car_rental/Model/car_owner_model.dart';
import 'package:car_rental/Model/review_model.dart';
import '../Model/review_model.dart';
import '../Model/car_model.dart';
import '../Model/car_brand_model.dart';

final Map<String, List<CarBrand>> carDataByCountry = {
  'india':[
    CarBrand(
      nameBrand: 'BMW', 
      imageBrand: 'images/icon-logo/bmw_logo_PNG19699.png', 
      cars: [
        Car(
          name: 'BMW X3', 
          price: 7500, 
          image: ['images/cars/x3.jpg','images/cars/x3 i.jpg','images/cars/x3 i12.jpg'], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 5.0, 
          seats: 4, 
          carColor: 'Blue',
          Fuel: 'Petrol',
          maxSpeed: '250', 
          engineOut: '670 HP', 
          mileage: '7', 
          advance: 'Autopilot', 
          features: 'Auto Parking',
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 3.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 3.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'BMW X5', 
          price: 5000, 
          image: ['images/cars/x5.jpg','images/cars/x5 i.jpg','images/cars/x5 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajastan', 
          rating: 5.0, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Diesel',
          maxSpeed: '300', 
          engineOut: '670 HP', 
          mileage: '5', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'BMW X1', 
          price: 5500, 
          image: ['images/cars/x1.jpg','images/cars/x1 i.jpg','images/cars/x1 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Surat', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'Green',
          Fuel: 'Petrol',
          maxSpeed: '200', 
          engineOut: '470 HP', 
          mileage: '6', 
          advance: 'Autopilot', 
          features: 'Auto Parking',
          owner: CarOwner(
            name: 'Rashi khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'BMW M5', 
          price: 6000, 
          image: ['images/cars/m5.jpg','images/cars/m5 i.jpg','images/cars/m5 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Petrol',
          maxSpeed: '250', 
          engineOut: '570 HP', 
          mileage: '8', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Shikhar dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Mahindra', 
      imageBrand: 'images/icon-logo/mahindra-suvs-logo-png_seeklogo-410248.png', 
      cars: [
        Car(
          name: 'Thar', 
          price: 4000, 
          image: ['images/cars/thar1.jpg','images/cars/thar i.jpg','images/cars/thar i1 (2).jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.5, 
          seats: 4, 
          carColor: 'Black',
          Fuel: 'Diesel',
          maxSpeed: '180', 
          engineOut: '670 HP', 
          mileage: '11', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'BE 6', 
          price: 8000, 
          image: ['images/cars/BE 6.jpg','images/cars/BE 6 i.jpg','images/cars/BE 6 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajastan', 
          rating: 5.0, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Electric',
          maxSpeed: '200', 
          engineOut: '570 HP', 
          mileage: '24', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
          
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'XUV7OO', 
          price: 7000, 
          image: ['images/cars/xuv700.jpeg','images/cars/xuv700 i.jpg','images/cars/xuv700 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Udaipur', 
          rating: 5.0, 
          seats: 7, 
          carColor: 'White',
          Fuel: 'Hybrid',
          maxSpeed: '200', 
          engineOut: '670 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
           
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Thar Roxx', 
          price: 5000, 
          image: ['images/cars/thar rox1.jpg','images/cars/roxx.jpg','images/cars/roxx i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajkot', 
          rating: 4.5, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Petrol',
          maxSpeed: '180', 
          engineOut: '670 HP', 
          mileage: '13', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Scorpio', 
          price: 5500, 
          image: ['images/cars/scorpio1.jpg', 'images/cars/scorpio i.jpg', 'images/cars/scorpio i1.jpg', ],
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Surat', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Diesel',
          maxSpeed: '200', 
          engineOut: '470 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Shikhar Dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: '', Image: '', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.')
          ]
        ),
        Car(
          name: 'XUV 3XO', 
          price: 8000, 
          image: ['images/cars/3xo.jpg','images/cars/xuv3xo i.jpg','images/cars/xuv3xo i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 5.0, 
          seats: 5, 
          carColor: 'white',
          Fuel: 'petrol',
          maxSpeed: '200', 
          engineOut: '570 HP', 
          mileage: '24', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Suzuki', 
      imageBrand: 'images/icon-logo/suzuki_PNG12291.png', 
      cars: [
        Car(
          name: 'Swift', 
          price: 3500, 
          image: ['images/cars/swift1.jpg','images/cars/swift i.jpg','images/cars/swift i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Bhavnagar', 
          rating: 3.9, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Petrol',
          maxSpeed: '145', 
          engineOut: '670 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Fronx', 
          price: 4500, 
          image: ['images/cars/fronx1.jpg','images/cars/fronx i.jpg','images/cars/fronx i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Surat', 
          rating: 4.0, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Petrol',
          maxSpeed: '150', 
          engineOut: '570 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Brezza', 
          price: 5000, 
          image: ['images/cars/brezza1.jpg','images/cars/brezza i.jpg','images/cars/brezza i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Jamnager', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Diesel',
          maxSpeed: '160', 
          engineOut: '470 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Shikhar Dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Baleno', 
          price: 4700, 
          image: ['images/cars/baleno1.jpg','images/cars/baleno i.jpg','images/cars/baleno i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajkot', 
          rating: 4.5, 
          seats: 5, 
          carColor: 'Blue',
          Fuel: 'Petrol',
          maxSpeed: '140', 
          engineOut: '670 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Grand Vitara', 
          price: 5500, 
          image: ['images/cars/vitara1.jpg','images/cars/vitara i.jpg','images/cars/vitara i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Surat', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Diesel',
          maxSpeed: '155', 
          engineOut: '550 HP', 
          mileage: '14', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
           
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Ciaz', 
          price: 6500, 
          image: ['images/cars/ciaz1.jpg','images/cars/ciaz i.jpg','images/cars/ciaz i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Aanad', 
          rating: 4.6, 
          seats: 5, 
          carColor: 'Blue',
          Fuel: 'Diesel',
          maxSpeed: '170', 
          engineOut: '570 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Snjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Jimmy', 
          price: 5000, 
          image: ['images/cars/jimmy1.jpg','images/cars/jimmy i.jpg','images/cars/jimmy i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.6, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Diesel',
          maxSpeed: '150', 
          engineOut: '570 HP', 
          mileage: '13', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: '',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Hyundai', 
      imageBrand: 'images/icon-logo/hyundai-logo-6.png', 
      cars: [
        Car(
          name: 'Creata', 
          price: 5500, 
          image: ['images/cars/creta 1.jpg','images/cars/creta i.jpg','images/cars/creta i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Gir', 
          rating: 4.8, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Hybrid',
          maxSpeed: '190', 
          engineOut: '670 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'i20', 
          price: 4000, 
          image: ['images/cars/i20 1.jpg','images/cars/i20 i.jpg','images/cars/i20 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'gandhinagar', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Petrol',
          maxSpeed: '160', 
          engineOut: '570 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Verna', 
          price: 5000, 
          image: ['images/cars/verna 1.jpg','images/cars/verna i.jpg','images/cars/verna i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.9, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '190', 
          engineOut: '670 HP', 
          mileage: '14', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Alcazar', 
          price: 6500, 
          image: ['images/cars/alccazar 1.jpg','images/cars/alcazar i.jpg','images/cars/alcazar i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Mumbai', 
          rating: 4.7, 
          seats: 7, 
          carColor: 'Black',
          Fuel: 'Diesel',
          maxSpeed: '180', 
          engineOut: '670 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'venue', 
          price: 4000, 
          image: ['images/cars/venue 1.jpg','images/cars/venue i.jpg','images/cars/venue i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'surat', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Petrol',
          maxSpeed: '140', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Shikhar Dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
           
          ), 
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'i10', 
          price: 3500, 
          image: ['images/cars/i10 1.jpg','images/cars/i10 i.jpg','images/cars/i10 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Gir', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Petrol',
          maxSpeed: '130', 
          engineOut: '570 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Honda', 
      imageBrand: 'images/icon-logo/5ec3e3f358550c0004427748.png', 
      cars: [
        Car(
          name: 'Honda City', 
          price: 6000, 
          image: ['images/cars/city1.jpg','images/cars/city i.jpg','images/cars/city i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.8, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Petrol',
          maxSpeed: '230', 
          engineOut: '670 HP', 
          mileage: '9', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Amaze', 
          price: 4500, 
          image: ['images/cars/amaze 1.jpg','images/cars/amaze i.jpg','images/cars/amaze i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajkot', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Diesel',
          maxSpeed: '160', 
          engineOut: '570 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
           
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Elevate', 
          price: 5000, 
          image: ['images/cars/elevate.png','images/cars/elevate i.jpg','images/cars/elevate i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Mumbai', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Hybrid',
          maxSpeed: '140', 
          engineOut: '670 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
           
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Honda Civik', 
          price: 7000, 
          image: ['images/cars/civik 1.jpg','images/cars/civik i.jpg','images/cars/civik i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Petrol',
          maxSpeed: '200', 
          engineOut: '670 HP', 
          mileage: '8', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Tata', 
      imageBrand: 'images/icon-logo/5ec3e22d58550c000442773b.png', 
      cars: [
        Car(
          name: 'Harrier', 
          price: 6500, 
          image: ['images/cars/harrier1.jpg','images/cars/harrier i.jpg','images/cars/harrier i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajkot', 
          rating: 4.8, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Diesel',
          maxSpeed: '230', 
          engineOut: '670 HP', 
          mileage: '13', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Curvv', 
          price: 7000, 
          image: ['images/cars/curvv.jpg','images/cars/cuvv i.jpg','images/cars/cuvv i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Electric',
          maxSpeed: '180', 
          engineOut: '570 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Safari', 
          price: 6700, 
          image: ['images/cars/safari 1.jpg','images/cars/safari i.jpg','images/cars/safari i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.8, 
          seats: 5, 
          carColor: 'Yellow',
          Fuel: 'Diesel',
          maxSpeed: '190', 
          engineOut: '670 HP', 
          mileage: '14', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Altroz', 
          price: 4500, 
          image: ['images/cars/altroz 1.jpg','images/cars/altroz i.jpg','images/cars/altroz i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Mumbai', 
          rating: 4.5, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Petrol',
          maxSpeed: '145', 
          engineOut: '670 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Nexon', 
          price: 4000, 
          image: ['images/cars/nexon 1.jpg','images/cars/nexon i.jpg','images/cars/nexon i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'surat', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '140', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Shikhar Dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Tiago', 
          price: 3500, 
          image: ['images/cars/tiago 1.jpg','images/cars/tiago i.jpg','images/cars/tiago i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Gir', 
          rating: 4.3, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '130', 
          engineOut: '570 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Toyota', 
      imageBrand: 'images/icon-logo/5ec3e1ee58550c0004427739.png', 
      cars: [
        Car(
          name: 'Fortuner', 
          price: 7500, 
          image: ['images/cars/fortuner 1.jpg','images/cars/fortuner i.jpg','images/cars/fortuner i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.8, 
          seats: 7, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '200', 
          engineOut: '670 HP', 
          mileage: '14', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
           
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Camry', 
          price: 6000, 
          image: ['images/cars/camry 1.jpg','images/cars/camry i.jpg','images/cars/camry i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Gir', 
          rating: 4.7, 
          seats: 5, 
          carColor: 'Gray',
          Fuel: 'Hybrid',
          maxSpeed: '160', 
          engineOut: '570 HP', 
          mileage: '11', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Crysta', 
          price: 5000, 
          image: ['images/cars/crysta 1.jpg','images/cars/crysta i.jpg','images/cars/crysta i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Bhavnagar', 
          rating: 4.5, 
          seats: 5, 
          carColor: 'White',
          Fuel: 'Diesel',
          maxSpeed: '150', 
          engineOut: '670 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Innova', 
          price: 6000, 
          image: ['images/cars/innova 1.jpg','images/cars/innova i.jpg','images/cars/innova i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Bhavnagar', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '140', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Kia', 
      imageBrand: 'images/icon-logo/580b57fcd9996e24bc43c485.png', 
      cars: [
        Car(
          name: 'Seltos', 
          price: 5500, 
          image: ['images/cars/seltos1.jpeg','images/cars/saltos i.jpg','images/cars/saltos i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Pune', 
          rating: 4.8, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '190', 
          engineOut: '670 HP', 
          mileage: '16', 
          advance: 'Autopilot', 
          features: 'Auto Parking', 
          owner: CarOwner(
            name: 'Mukesh Ambani',
            image: 'images/icon-logo/Oval (3).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Carnival', 
          price: 8000, 
          image: ['images/cars/carnnival.jpg','images/cars/carnnival i.jpg','images/cars/carnnival i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Rajkot', 
          rating: 4.7, 
          seats: 7, 
          carColor: 'Black',
          Fuel: 'Diesel',
          maxSpeed: '180', 
          engineOut: '570 HP', 
          mileage: '12', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Rashi Khanna',
            image: 'images/icon-logo/Oval.png',
            number: 38938,
           
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Sonet', 
          price: 4000, 
          image: ['images/cars/sonet 1.jpg', 'images/cars/sonet i.jpg', 'images/cars/sonet i1.jpg', ],
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Ahmedabad', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'Red',
          Fuel: 'Diesel',
          maxSpeed: '140', 
          engineOut: '670 HP', 
          mileage: '18', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Janki Bodivala',
            image: 'images/icon-logo/user1.png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'EV9', 
          price: 6500, 
          image: ['images/cars/EV 9.jpg','images/cars/EV9 i.jpg','images/cars/EV9 i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Mumbai', 
          rating: 4.7, 
          seats: 7, 
          carColor: 'Blue',
          Fuel: 'Electric',
          maxSpeed: '180', 
          engineOut: '670 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Shikhar Dhawan',
            image: 'images/icon-logo/Oval (2).png',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Niro', 
          price: 4000, 
          image: ['images/cars/niro.jpg','images/cars/niro i.jpg','images/cars/niro i1.jpg',], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'surat', 
          rating: 4.4, 
          seats: 5, 
          carColor: 'Black',
          Fuel: 'Petrol',
          maxSpeed: '140', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Sanjay Datt',
            image: 'images/icon-logo/Oval (1).png',
            number: 38938,
            
          ),
          reviews: [
            Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
  ],
  'United State' :[
    CarBrand(
      nameBrand: 'Tesla', 
      imageBrand: 'images/carLogo/Icon (3).png', 
      cars: [
        Car(
          name: 'Cybertruck', 
          price: 300, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Los Angeles', 
          rating: 5.0, 
          seats: 5, 
          carColor: 'Gray', 
          Fuel: 'Electric', 
          maxSpeed: '300', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Model 3', 
          price: 200, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Huston', 
          rating: 4.4, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '190', 
          engineOut: '470 HP', 
          mileage: '20', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Model x', 
          price: 210, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Dallas', 
          rating: 4.5, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '220', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
         Car(
          name: 'Model Y', 
          price: 240, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Jacksonville', 
          rating: 4.7, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '170', 
          engineOut: '470 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
         Car(
          name: 'Model Z', 
          price: 270, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'New York', 
          rating: 4.8, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '180', 
          engineOut: '470 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),
    CarBrand(
      nameBrand: 'Toyota', 
      imageBrand: 'images/carLogo/Icon (3).png', 
      cars: [
        Car(
          name: 'Cmry', 
          price: 270, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'New York', 
          rating: 5.0, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '230', 
          engineOut: '670 HP', 
          mileage: '11', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
           
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Tacoma', 
          price: 210, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Huston', 
          rating: 4.4, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '190', 
          engineOut: '470 HP', 
          mileage: '20', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
            
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
        Car(
          name: 'Corolla', 
          price: 210, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Dallas', 
          rating: 4.5, 
          seats: 5, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '220', 
          engineOut: '470 HP', 
          mileage: '17', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
        
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
         Car(
          name: 'RAV4', 
          price: 240, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Jacksonville', 
          rating: 4.7, 
          seats: 7, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '170', 
          engineOut: '470 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
           
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
         Car(
          name: '4Runner', 
          price: 270, 
          image: [''], 
          details: 'A car with hight specs theat are rented ot an affordable price.', 
          city: 'Austin', 
          rating: 4.8, 
          seats: 7, 
          carColor: '', 
          Fuel: '', 
          maxSpeed: '180', 
          engineOut: '470 HP', 
          mileage: '15', 
          advance: 'Autopilot', 
          features: 'Auto Parking',  
          owner: CarOwner(
            name: 'Raj Patel',
            image: '',
            number: 38938,
           
          ),
          reviews: [
           Review(Name: 'Himanshu', Image: 'images/icon-logo/Ellipse 201 (2).png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Jay', Image: 'images/icon-logo/Ellipse 201 (3).png', rate: 4.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Reem', Image: 'images/icon-logo/Ellipse 201 (1).png', rate: 3.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Lucky', Image: 'images/icon-logo/Ellipse 201.png', rate: 5.0, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            Review(Name: 'Neel', Image: 'images/icon-logo/Ellipse 202.png', rate: 4.5, detail: 'The rental car was clean, reliable, and the service was quick and efficient. Overall, the experience was hassle-free and enjoyable.'),
            
          ]
        ),
      ]
    ),

  ]
};