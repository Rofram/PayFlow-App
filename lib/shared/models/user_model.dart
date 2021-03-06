import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoURL,
      };

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map["name"], photoURL: map["photoURL"]);
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
