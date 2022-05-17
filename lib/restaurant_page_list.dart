import 'package:flutter/material.dart';
import 'dart:async';

import 'model/university_model.dart';

class RestaurantsPageList extends StatefulWidget {
  final University university;

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
      body: Container(
        child: Column(
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
                return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.university.restaurants[index]),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
