import 'package:flutter_traveling_app/models/user.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> user;

  TravelSpot({
    required this.name,
    required this.image,
    required this.date,
    required this.user,
  });
}

List<TravelSpot> travelSpot = [
  TravelSpot(
    name: 'Red Mountains',
    image: 'assets/images/Red_Mountains.png',
    date: DateTime(2020, 10, 15),
    user: users..shuffle(),
  ),
  TravelSpot(
    name: 'Magical World',
    image: 'assets/images/Magical_World.png',
    date: DateTime(2020, 3, 10),
    user: users..shuffle(),
  ),
  TravelSpot(
    name: 'Red Mountains',
    image: 'assets/images/Red_Mountains.png',
    date: DateTime(2020, 8, 25),
    user: users..shuffle(),
  ),
];

List<User> users = [user1, user2, user3];
