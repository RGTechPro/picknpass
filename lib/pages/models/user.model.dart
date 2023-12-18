
class User {
  String name;
  String password;
  List modelData;
  String userId;
  User({
    required this.name,
    required this.password,
    required this.modelData,
    required this.userId,
  });

  static User fromMap(Map<String, dynamic> user) {
    return  User(
      name: user['name'],
      password: user['password'],
      // modelData: jsonDecode(user['modelData']),
    modelData:  user['modelData'],
      userId: user['userId'],);
  }

  toMap() {
    return {
      'name': name,
      'password': password,
    'modelData': modelData,
      'userId': userId,
    };
  }
}
class Store {
  final String name;
  final double latitude;
  final double longitude;

  Store({
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}
