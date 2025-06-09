import 'car_model.dart';

class CarBrand{
  final String nameBrand;
  final String imageBrand;
  final List<Car> cars;

  CarBrand({
    required this.nameBrand,
    required this.imageBrand,
    required this.cars,
  });
}