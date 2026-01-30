import 'package:flutter/material.dart';
import 'package:flutter_self_learning/domain/models/resturant.dart';

class RestaurantDetailPage extends StatelessWidget {
  const RestaurantDetailPage({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(restaurant.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              children: [
                Text(restaurant.cuisine, style: TextStyle(fontSize: 18)),
                SizedBox(width: 10),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
            SizedBox(height: 15),
            Text(restaurant.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}