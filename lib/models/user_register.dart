// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:app_movil_telemedicina/global/environment.dart';

UserRegister userFromJson(String str) =>
    UserRegister.fromJson(json.decode(str));

String userToJson(UserRegister data) => json.encode(data.toJson());

class UserRegister {
  UserRegister(
      {this.nombre, this.email, this.password, this.role = "PACIENTE_ROLE"});

  String nombre;
  String email;
  String password;
  String role = "PACIENTE_ROLE";

  factory UserRegister.fromJson(Map<String, dynamic> json) => UserRegister(
        nombre: json["nombre"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "email": email,
        "password": password,
        "role": role,
      };
}
