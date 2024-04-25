/*import 'package:cloud_firestore/cloud_firestore.dart';
class User{

  final String? name;
  final String? surname;
  final String? email;
  final String? password;
  //final String? id;

  User({
    required this.name,
    required this.surname,
    required this.email,
    required this.password,
    //required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
     // id: json['id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
     // 'id': id,
    };
  }

}
*/