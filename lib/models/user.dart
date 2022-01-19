import 'package:flutter/material.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  // final String followers;
  // final String following;

  const User({
    required this.email,
    required this.photoUrl,
    required this.username,
    // required this.followers,
    // required this.following,
    required this.bio,
    required this.uid,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "photoUrl": photoUrl,
        "bio": bio,
        // "followers": followers,
        // "following": following,
      };
}
