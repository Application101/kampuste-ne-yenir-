import 'package:flutter/material.dart';
import 'package:kampuste_ne_yenir/restaurant_detail_page.dart';
import 'model/university_model.dart';

class RestaurantsPageList extends StatefulWidget {
  final university;

  const RestaurantsPageList(this.university);

  @override
  _RestaurantsPageListState createState() => _RestaurantsPageListState();
}

class _RestaurantsPageListState extends State<RestaurantsPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.university.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     widget.user.name,
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: widget.university.restaurants.length,
            itemBuilder: (BuildContext context, int index) {
              return  ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          RestaurantDetailPage(widget.university.restaurants[index].restaurantName, widget.university.restaurants[index].photoUrl, widget.university.restaurants[index].description, widget.university.restaurants[index].comments)));
                },
                title: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(widget.university.restaurants[index].restaurantName, style: const TextStyle(
                    fontSize: 18,
                  ),),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
