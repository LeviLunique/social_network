// To parse required this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:social_network/app/shared/models/user.dart';

class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    this.user,
  });

  int userId;
  int id;
  String title;
  String body;

  // Utilitário
  User? user; // Nunca vai ou volta no JSON original

  factory Post.fromRawJson(String str) => Post.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
