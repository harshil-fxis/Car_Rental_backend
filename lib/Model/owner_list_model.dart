import 'package:car_rental/Model/chats_model.dart';

class OwnerList{
  final String name;
  final String image;
  final int number;
  final bool active;
  final int unread; 
  final List<Chat> chats;

   OwnerList({
    required this.name,
    required this.image,
    required this.number,
    required this.active,
    required this.unread,
    required this.chats
  });
}









//             chats: [
//               Chat(sender: 'Janki', message: 'Hello', time: '9:30 AM'),
//               Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
//               Chat(sender: 'Janki', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:33 AM'),
//               Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:33 AM'),
//               Chat(sender: 'Janki', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '9:30 AM'),
//               Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '9:32 AM'),
//               Chat(sender: 'Janki', message: "It's ok no problem", time: '9:30 AM'),
//             ]