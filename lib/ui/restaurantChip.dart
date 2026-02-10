import 'package:flutter/material.dart';
import 'package:flutter_self_learning/domain/models/restaurant.dart';
import 'package:flutter_self_learning/ui/restaurant_comments_view.dart';

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
                Text(
                  restaurant.name,
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),

                Row(
                  children: [
                    Chip(
                      avatar: Icon(Icons.star, size: 18),
                      label: Text("Student"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RestaurantCommentsView(restaurant: restaurant),
                          ),
                        );
                        Chip(label: Text(restaurant.type.name));
                      },
                    ),
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
