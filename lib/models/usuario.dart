// To parse this JSON data, do
//
//     final usuario = usuarioFromJson(jsonString);

import 'dart:convert';

import 'package:app_movil_telemedicina/global/environment.dart';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

final base_url = Environment.apiUrl;

class Usuario {
  Usuario({
    this.nombre,
    this.email,
    this.password,
    this.img,
    this.uid,
    this.role = "PACIENTE_ROLE",
  });

  String nombre;
  String email;
  String password;
  String img;
  String uid;
  String role;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"],
        email: json["email"],
        password: json["password"],
        img: json["img_perfil"],
        uid: json["uid"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "email": email,
        "password": password,
        "img_perfil": img,
        "uid": uid,
        "role": role,
      };

  // String get imagenUrl {
  //   if (this.img == null) {
  //     return '$base_url/upload/usuarios/no-image';
  //   } else if (this.img.contains('https')) {
  //     return this.img;
  //   } else if (this.img != null) {
  //     return '$base_url/upload/usuarios/${this.img}';
  //   } else {
  //     return '$base_url/upload/usuarios/no-image';
  //   }
  // }
}
