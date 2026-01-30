import 'package:flutter/material.dart';
import 'package:flutter_self_learning/data/resturant.dart';
import 'package:flutter_self_learning/domain/restaurant_detail_page.dart';
class ResturantSection extends StatelessWidget {
  const ResturantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to resturant list'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("mother fucker"),
          Expanded(
            child: ListView.builder(
              itemCount: restaurantList.length,
              itemBuilder: (context, index) {
                final resturant = restaurantList[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestaurantDetailPage(restaurant: resturant,) )
                      
                    );

                  },
                  child: Card(  // ← Add this - your Card widget goes here
                    child: Container(
                      child: Column(
                        children: [
                          Text(resturant.name),
                          Text(resturant.cuisine, style: TextStyle(color: Colors.green[800]),),
                          const Icon(Icons.star, color: Colors.orange,),
                          Text(resturant.description)
                        ],
                      ),
                    ),
                  ),
                );

              },
            ),
          )
        ],
      ),
    );
  }
}