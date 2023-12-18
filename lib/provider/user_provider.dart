import 'package:flutter/material.dart';
import 'package:picknpass/pages/models/cartModel.dart';
import 'package:picknpass/pages/models/user.model.dart';

class UserProvider with ChangeNotifier {
User? currentUser;
List<ShoppingCart> cartItems=[];

  User? get getCurrentUser => currentUser;
  void setCurrentUser(User user) {
    currentUser = user;
    notifyListeners();
  }
}


