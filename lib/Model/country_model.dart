import 'car_Brand_model.dart';

class CarCountry{
  final String CountryName;
  final String CountryImage;
  final List<CarBrand> brands;

  CarCountry({
    required this.CountryName,
    required this.CountryImage,
    required this.brands,
  });
}