import 'dart:convert';

class UserModel {
  final String email;
  final String name;
  final String uid;

  UserModel(
      {required this.email,
      required this.name,
      required this.uid});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      uid: json['uid'],
    );
  }

  factory UserModel.fromDocument(Map<String, dynamic> data, String documentId) {
    return UserModel(
      email: data['email'],
      name: data['name'],
      uid: documentId,
    );
  }

  String toJsonEncode() {
    return jsonEncode(toJson());
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'uid': uid,
    };
  }
}
