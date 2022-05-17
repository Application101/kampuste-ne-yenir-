import 'dart:convert';

List<University> userFromJson(String str) => List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String userToJson(List<University> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {
  University({
    required this.index,
    required this.about,
    required this.restaurants,
    required this.name,
  });

  int index;
  String about;
  List<String> restaurants;
  String name;

  factory University.fromJson(Map<String, dynamic> json) => University(
    index: json["index"],
    about: json["about"],
    restaurants: List<String>.from(json["restaurants"].map((x) => x)),
    name: json["name"]
  );

  Map<String, dynamic> toJson() => {
    "index": index,
    "about": about,
    "restaurants": List<dynamic>.from(restaurants.map((x) => x)),
    "name": name
  };
}
