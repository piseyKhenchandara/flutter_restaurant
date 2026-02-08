import 'package:flutter/material.dart';
import 'package:flutter_self_learning/domain/models/restaurant.dart';
import 'package:flutter_self_learning/domain/models/restaurant_type.dart';
import 'package:flutter_self_learning/ui/restaurantChip.dart';

class RestaurantsView extends StatefulWidget {
  const RestaurantsView({super.key, required this.restaurants});

  final List<Restaurant> restaurants;

  @override
  State<RestaurantsView> createState() => _RestaurantsViewState();
}

class _RestaurantsViewState extends State<RestaurantsView> {
  bool _isKhmer = false;

  List<Restaurant> get filteredRestaurants {
    if (_isKhmer) {
      return widget.restaurants
          .where((restaurant) => restaurant.type == RestaurantType.khmer)
          .toList();
    }
    return widget.restaurants;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Miam'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey.shade100,

        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: _isKhmer,
                  onChanged: (value) {
                    setState(() {
                      _isKhmer = value ?? true;
                    });
                  },
                ),
                const Text('Show only khmer restaurants'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: filteredRestaurants.length,
                itemBuilder: (context, index) {
                  final restaurant = filteredRestaurants[index];
                  return Restaurantchip(restaurant: restaurant);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
