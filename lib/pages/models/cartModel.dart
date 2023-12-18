class CartItem {
  int qty;
  String itemName;
  int price;
 int total;
  CartItem({required this.qty, required this.itemName, required this.price,required this.total});

  // Factory method to create CartItem from a map
  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      qty: map['Qty'] as int,
      itemName: map['itemName'] as String,
      price: map['price'] as int,
      total: map['price']*map['Qty'] as int,
    );
  }

  // Convert CartItem to a map
  Map<String, dynamic> toMap() {
    return {
      'Qty': qty,
      'itemName': itemName,
      'price': price,
    };
  }
}

class ShoppingCart {
  List<CartItem> items;

  ShoppingCart({required this.items});

  // Factory method to create ShoppingCart from a list of maps
  factory ShoppingCart.fromList(List<dynamic> itemList) {
    List<CartItem> cartItems = itemList.map((map) => CartItem.fromMap(map)).toList();
    return ShoppingCart(items: cartItems);
  }

  // Convert ShoppingCart to a list of maps
  List<Map<String, dynamic>> toList() {
    return items.map((item) => item.toMap()).toList();
  }
}
