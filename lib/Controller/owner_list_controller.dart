import 'package:car_rental/Model/chats_model.dart';
import 'package:car_rental/Model/owner_list_model.dart';

final Map<String, List<OwnerList>> carOwnerByCountry = {
  'india':[
    OwnerList(
      name: 'Janki Bodivala', 
      image: 'images/icon-logo/user1.png', 
      number: 9849348435, 
      active: true,
      unread: 2,
      chats: [
        Chat(sender: 'Janki', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Janki', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Janki', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Janki', message: 'Hello', time: '9:30 AM'),
        Chat(sender: 'Janki', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Janki', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Janki', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Janki', message: 'Hello', time: '9:30 AM'),
      ]
    ),
    OwnerList(
      name: 'Sanjay Datt', 
      image: 'images/icon-logo/Oval (1).png', 
      number: 9986348492, 
      active: true,
      unread: 1,
      chats: [
        Chat(sender: 'Sanjay', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Sanjay', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Sanjay', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Sanjay', message: 'Hello', time: '9:30 AM'),
      ]
    ),
    OwnerList(
      name: 'Rashi Khanna', 
      image: 'images/icon-logo/Oval.png', 
      number: 9779348488, 
      active: false,
      unread: 0,
      chats: [
        Chat(sender: 'Rashi', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Rashi', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Rashi', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Rashi', message: 'Hello', time: '9:30 AM'),
      ]
    ),
    OwnerList(
      name: 'Shikhar Dhawan', 
      image: 'images/icon-logo/Oval (2).png', 
      number: 8749341234, 
      active: false,
      unread: 0,
      chats: [
        Chat(sender: 'Shikhar', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Shikhar', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Shikhar', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Shikhar', message: 'Hello', time: '9:30 AM'),
      ]
    ),
    OwnerList(
      name: 'Mukesh Ambani', 
      image: 'images/icon-logo/Oval (3).png', 
      number: 9447348476, 
      active: true,
      unread: 0,
      chats: [
        Chat(sender: 'Mukesh', message: "It's ok no problem", time: '12:30 AM'),
        Chat(sender: 'user', message: 'Great! I’d like to pick it up from [Pickup Location] and return it to \n[Drop-off Location].', time: '11:17 AM'),
        Chat(sender: 'Mukesh', message: 'Hello! Yes, the car is available on those dates. Could you please confirm the pickup and drop-off locations?', time: '10:01 AM'),
        Chat(sender: 'user', message: 'Hi, I’m interested in renting your car. Is it available from [Date] to [Date]?', time: '9:40 AM'),
        Chat(sender: 'Mukesh', message: 'Ready for your next adventure? Book a car today and get 20% off your first rental! Don’t miss out—limited-time offer. \nReserve your ride now!', time: '9:35 AM'),
        Chat(sender: 'user', message: 'hii', time: '9:32 AM'),
        Chat(sender: 'Mukesh', message: 'Hello', time: '9:30 AM'),
      ]
    ),
  ]
};