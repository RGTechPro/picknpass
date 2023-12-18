import 'package:flutter/material.dart';
import 'package:picknpass/pages/models/cartModel.dart';
import 'package:picknpass/pages/models/user.model.dart';

class UserProvider with ChangeNotifier {
  User? currentUser;
  ShoppingCart? cartItems;
List<MyOrder> orders = [];
  User? get getCurrentUser => currentUser;
  void setCurrentUser(User user) {
    currentUser = user;
    notifyListeners();
  }

  void setCartItems(ShoppingCart cart) {
    cartItems = cart;
    notifyListeners();
  }

  int getTotal() {
    int total = 0;
    cartItems!.items.forEach((element) {
      total += element.total;
    });
    return total;
  }
}
