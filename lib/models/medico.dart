import 'dart:convert';



// To parse this JSON data, do
//
//     final medico = medicoFromJson(jsonString);

Medico medicoFromJson(String str) => Medico.fromJson(json.decode(str));

String medicoToJson(Medico data) => json.encode(data.toJson());

class Medico {
  Medico({
    // this.ok,
    this.id,
    this.calificacion,
    this.especialidad,
    this.descripcion,
    // this.persona,
  });

  // bool ok;
  String id;
  int calificacion;
  String especialidad;
  String descripcion;
  // Persona persona;

  factory Medico.fromJson(Map<String, dynamic> json) => Medico(
        // ok: json["ok"],
        id: json["_id"],
        calificacion: json["calificacion"],
        especialidad: json["especialidad"],
        descripcion: json["descripcion"],
        // persona: Persona.fromJson(json["persona"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "calificacion": calificacion,
        "especialidad": especialidad,
        "descripcion": descripcion,
        // "persona": persona.toJson(),
      };
}

// class Persona {
//     Persona({
//         this.id,
//         this.nombre,
//         this.apellido,
//     });

//     String id;
//     String nombre;
//     String apellido;

//     factory Persona.fromJson(Map<String, dynamic> json) => Persona(
//         id: json["_id"],
//         nombre: json["nombre"],
//         apellido: json["apellido"],
//     );

//     Map<String, dynamic> toJson() => {
//         "_id": id,
//         "nombre": nombre,
//         "apellido": apellido,
//     };
// }
