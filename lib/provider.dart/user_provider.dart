import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user.dart';
import 'package:instagram_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethodes _authMethodes = AuthMethodes();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethodes.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
