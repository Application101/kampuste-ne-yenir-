import 'package:flutter/material.dart';
import 'package:kampuste_ne_yenir/model/university_model.dart';

class RestaurantDetailPage extends StatefulWidget {

  final restaurantName;
  const RestaurantDetailPage(this.restaurantName);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurantName),
      ),
      body: Center(child: Text(widget.restaurantName)),
    );
  }
}