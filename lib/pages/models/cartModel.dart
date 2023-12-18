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



class MyOrder {
  List<CartItem> items;
  double payableAmount;
  MyTransaction paymentInfo;

  MyOrder({
    required this.items,
    required this.payableAmount,
    required this.paymentInfo,
  });

  // Factory method to create an Order instance from a Map
  factory MyOrder.fromMap(Map<String, dynamic> map) {
    return MyOrder(
      items: List<CartItem>.from(map['items'].map((item) => CartItem.fromMap(item))),
      payableAmount: map['payableAmount'] ?? 0.0,
      paymentInfo: MyTransaction.fromMap(map['paymentInfo']),
    );
  }

  // Method to convert Order instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'items': items.map((item) => item.toMap()).toList(),
      'payableAmount': payableAmount,
      'paymentInfo': paymentInfo.toMap(),
    };
  }
}

class MyTransaction {
  String transactionId;
  double amount;
  String currency;
  String statusCode;
  bool isSuccessful;
  String message;

  MyTransaction({
    required this.transactionId,
    required this.amount,
    required this.currency,
    required this.statusCode,
    required this.isSuccessful,
    required this.message,
  });

  // Factory method to create a Transaction instance from a Map
  factory MyTransaction.fromMap(Map<String, dynamic> map) {
    return MyTransaction(
      transactionId: map['transactionId'] ?? '',
      amount: map['amount'] ?? 0.0,
      currency: map['currency'] ?? '',
      statusCode: map['statusCode'] ?? '',
      isSuccessful: map['isSuccessful'] ?? false,
      message: map['message'] ?? '',
    );
  }

  // Method to convert Transaction instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'transactionId': transactionId,
      'amount': amount,
      'currency': currency,
      'statusCode': statusCode,
      'isSuccessful': isSuccessful,
      'message': message,
    };
  }
}
