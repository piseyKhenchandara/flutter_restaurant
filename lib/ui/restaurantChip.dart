import 'package:flutter/material.dart';
import 'package:flutter_self_learning/domain/models/restaurant.dart';

class Restaurantchip extends StatelessWidget {
  const Restaurantchip({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
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
  }
}
