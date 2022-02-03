// To parse this JSON data, do
//
//     final foodMap = foodMapFromJson(jsonString);

import 'dart:convert';

import 'dart:ffi';

FoodMap foodMapFromJson(String str) => FoodMap.fromJson(json.decode(str));

String foodMapToJson(FoodMap data) => json.encode(data.toJson());

class FoodMap {
  FoodMap({
    this.status,
    this.fruits,
  });

  String? status;
  List<Fruit>? fruits;

  factory FoodMap.fromJson(Map<String, dynamic> json) => FoodMap(
        status: json["status"] == null ? null : json["status"],
        fruits: json["fruits"] == null
            ? null
            : List<Fruit>.from(json["fruits"].map((x) => Fruit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        // "fruits": fruits == null ? null : List<dynamic>.from(fruits.map((x) => x.toJson())),
        "fruits": fruits == null ? null : fruits,
      };
}

class Fruit {
  Fruit({
    this.name,
    this.image,
    this.rating,
    this.ratingColor,
  });

  String? name;
  String? image;
  String? rating;
  int? ratingColor;

  factory Fruit.fromJson(Map<String, dynamic> json) => Fruit(
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        rating: json["rating"] == null ? null : json["rating"],
        ratingColor: json["rating_color"] == null ? null : json["rating_color"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "image": image == null ? null : image,
        "rating": rating == null ? null : rating,
        "rating_color": ratingColor == null ? null : ratingColor,
      };
}
