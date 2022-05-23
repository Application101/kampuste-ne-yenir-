import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kampuste_ne_yenir/model/university_model.dart';

class RestaurantDetailPage extends StatefulWidget {
  final restaurantName;
  final restaurantPhoto;
  final restaurantDescription;
  final comments;

  const RestaurantDetailPage(this.restaurantName, this.restaurantPhoto, this.restaurantDescription, this.comments);

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
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
              fit: BoxFit.fill,
              height: 350,
              width: 350,
              imageUrl: widget.restaurantPhoto,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50.0),
              child: Align(alignment: Alignment.center, child: Text(widget.restaurantDescription)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text("Yorumlar"),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.comments.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(widget.comments[index]),
                  ),
                );
              },
            ),
          ],
        ),
      )),
    );
  }
}