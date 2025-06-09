import 'package:flutter/cupertino.dart';

class AppState{
  static ValueNotifier<String?> selectedCountri = ValueNotifier<String?>('');
  static ValueNotifier<String?> flagUrl = ValueNotifier<String?>('');
  static ValueNotifier<String?> userId = ValueNotifier<String?>('');
}

class ApiConfig{
  static const String baseUrl = "https://90f8-103-173-21-78.ngrok-free.app";
}