import 'package:flutter/material.dart';
import 'package:flutter_self_learning/domain/models/restaurant.dart';
import 'package:flutter_self_learning/domain/models/restaurant_type.dart';

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
            ...filteredRestaurants
                .map((restaurant) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey.shade200,
                          width: double.infinity,
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(restaurant.name),
                              Row(
                                children: [
                                  Chip(
                                    avatar: Icon(Icons.star, size: 18),
                                    label: Text("Student"),
                                  ),
                                  Chip(label: Text(restaurant.type.name)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
