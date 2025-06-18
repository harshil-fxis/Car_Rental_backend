import 'package:flutter/cupertino.dart';

class AppState{
  static ValueNotifier<String?> selectedCountri = ValueNotifier<String?>('');
  static ValueNotifier<String?> flagUrl = ValueNotifier<String?>('');
  static ValueNotifier<String?> userId = ValueNotifier<String?>('');
  static ValueNotifier<String?> userName = ValueNotifier<String?>('');
  static ValueNotifier<String?> userEmail = ValueNotifier<String?>('');
  static ValueNotifier<String?> userCountry = ValueNotifier<String?>('');
  static ValueNotifier<String?> profilePic= ValueNotifier<String?>('');
  static ValueNotifier<String?> ownerEmail = ValueNotifier<String?>('');

}

class ApiConfig{
  static const String baseUrl = "https://41c8-103-173-21-78.ngrok-free.app";
}