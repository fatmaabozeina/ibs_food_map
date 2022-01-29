import 'dart:convert';

FoodMap foodMapFromJson(String str) => FoodMap.fromJson(json.decode(str));

String foodMapToJson(FoodMap data) => json.encode(data.toJson());

class FoodMap {
  FoodMap({
    this.status,
    this.a,
  });

  String? status;
  List<A>? a;

  factory FoodMap.fromJson(Map<String, dynamic> json) => FoodMap(
        status: json["status"] == null ? null : json["status"],
        a: json["A"] == null
            ? null
            : List<A>.from(json["A"].map((x) => A.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "A": a == null ? null : a,
      };
}

class A {
  A({
    this.name,
    this.type,
    this.color,
  });

  String? name;
  String? type;
  int? color;

  factory A.fromJson(Map<String, dynamic> json) => A(
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        color: json["color"] == null ? null : json["color"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "color": color == null ? null : color,
      };
}


//List<dynamic>.from(a.map((x) => x.toJson()))