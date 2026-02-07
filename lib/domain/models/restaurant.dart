import 'package:flutter_self_learning/domain/models/restaurant_type.dart';

class Restaurant {
  final String name;
  final String address;
  final RestaurantType type;

  Restaurant({required this.name, required this.address, required this.type});
}
