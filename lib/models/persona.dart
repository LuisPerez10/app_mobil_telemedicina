import 'dart:convert';

import 'package:goldenhands/global/environment.dart';

Persona personaFromJson(String str) => Persona.fromJson(json.decode(str));

String personaToJson(Persona data) => json.encode(data.toJson());

final base_url = Environment.apiUrl;

class Persona {
  Persona({
    this.id,
    this.nombre,
    this.apellido,
    this.celular,
    this.img,
    this.direccion,
    this.fechaNacimiento,
    this.genero,

    // this.password,
  });

  String id;
  String nombre;
  String apellido;
  String celular;
  String fechaNacimiento;
  String genero;
  String img;
  String direccion;
  // String email;
  // String password;

  factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id: json["id"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        celular: json["celular"],
        direccion: json["direccion"] ?? 'Sin Direccion',
        fechaNacimiento: json["fecha_nacimiento"],
        genero: json["genero"],
        img: json["img"],
        // email: json["email"],
        // // password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "apellido": apellido,
        "celular": celular,
        "direccion": direccion,
        "img": img,
        "genero": genero,
        "fecha_nacimiento": fechaNacimiento
      };
}
