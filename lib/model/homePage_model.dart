// To parse this JSON data, do
//
//     final homeDetails = homeDetailsFromJson(jsonString);

import 'dart:convert';

HomeDetails homeDetailsFromJson(String str) =>
    HomeDetails.fromJson(json.decode(str));

String homeDetailsToJson(HomeDetails data) => json.encode(data.toJson());

class HomeDetails {
  HomeDetails({
    this.image,
    this.name,
    this.post,
    this.icon,
    this.likes,
  });

  String? image;
  String? name;
  String? post;
  String? icon;
  String? likes;

  factory HomeDetails.fromJson(Map<String, dynamic> json) => HomeDetails(
        image: json["image"],
        name: json["name"],
        post: json["post"],
        icon: json["icon"],
        likes: json["likes"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "post": post,
        "icon": icon,
        "likes": likes,
      };
}
