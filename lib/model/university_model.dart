// To parse this JSON data, do
//
//     final university = universityFromJson(jsonString);

import 'dart:convert';

List<University> universityFromJson(String str) => List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String universityToJson(List<University> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {
  University({
    required this.index,
    required this.restaurants,
    required this.name,
  });

  int index;
  List<Restaurant> restaurants;
  String name;

  factory University.fromJson(Map<String, dynamic> json) => University(
    index: json["index"],
    restaurants: List<Restaurant>.from(json["restaurants"].map((x) => Restaurant.fromJson(x))),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "index": index,
    "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
    "name": name,
  };
}

class Restaurant {
  Restaurant({
    required this.restaurantName,
    required this.photoUrl,
    required this.description,
    required this.comments
  });

  String restaurantName;
  String photoUrl;
  String description;
  List<String> comments;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    restaurantName: json["restaurant_name"],
    photoUrl: json["photo_url"],
    description: json['description'],
    comments: List<String>.from(json["comments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "restaurant_name": restaurantName,
    "photo_url": photoUrl,
    "description" : description,
    "comments": List<dynamic>.from(comments.map((x) => x)),
  };
}
