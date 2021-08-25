// To parse this JSON data, do
//
//     final fichaMedicas = fichaMedicasFromJson(jsonString);

import 'dart:convert';

FichaMedicas fichaMedicasFromJson(String str) =>
    FichaMedicas.fromJson(json.decode(str));

String fichaMedicasToJson(FichaMedicas data) => json.encode(data.toJson());

class FichaMedicas {
  FichaMedicas({
    this.ok,
    this.fichaMedicas,
    this.medico,
  });

  bool ok;
  List<FichaMedica> fichaMedicas;
  List<MedicoElement> medico;

  factory FichaMedicas.fromJson(Map<String, dynamic> json) => FichaMedicas(
        ok: json["ok"],
        fichaMedicas: List<FichaMedica>.from(
            json["fichaMedicas"].map((x) => FichaMedica.fromJson(x))),
        medico: List<MedicoElement>.from(
            json["medico"].map((x) => MedicoElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "fichaMedicas": List<dynamic>.from(fichaMedicas.map((x) => x.toJson())),
        "medico": List<dynamic>.from(medico.map((x) => x.toJson())),
      };
}

class FichaMedica {
  FichaMedica({
    this.nroFicha,
    this.fecha,
    this.id,
    this.estado,
    this.paciente,
    this.medico,
    this.horaInicio,
  });

  String nroFicha;
  DateTime fecha;
  String id;
  String estado;
  Paciente paciente;
  FichaMedicaMedico medico;
  DateTime horaInicio;

  factory FichaMedica.fromJson(Map<String, dynamic> json) => FichaMedica(
        nroFicha: json["nroFicha"],
        fecha: DateTime.parse(json["fecha"]),
        id: json["_id"],
        estado: json["estado"],
        paciente: Paciente.fromJson(json["paciente"]),
        medico: FichaMedicaMedico.fromJson(json["medico"]),
        horaInicio: DateTime.parse(json["horaInicio"]),
      );

  Map<String, dynamic> toJson() => {
        "nroFicha": nroFicha,
        "fecha": fecha.toIso8601String(),
        "_id": id,
        "estado": estado,
        "paciente": paciente.toJson(),
        "medico": medico.toJson(),
        "horaInicio": horaInicio.toIso8601String(),
      };
}

class FichaMedicaMedico {
  FichaMedicaMedico({
    this.celular,
    this.id,
    this.usuario,
    this.nombre,
    this.apellido,
  });

  String celular;
  String id;
  MedicoUsuario usuario;
  String nombre;
  String apellido;

  factory FichaMedicaMedico.fromJson(Map<String, dynamic> json) =>
      FichaMedicaMedico(
        celular: json["celular"],
        id: json["_id"],
        usuario: MedicoUsuario.fromJson(json["usuario"]),
        nombre: json["nombre"],
        apellido: json["apellido"],
      );

  Map<String, dynamic> toJson() => {
        "celular": celular,
        "_id": id,
        "usuario": usuario.toJson(),
        "nombre": nombre,
        "apellido": apellido,
      };
}

class MedicoUsuario {
  MedicoUsuario({
    this.id,
    this.img,
  });

  String id;
  String img;

  factory MedicoUsuario.fromJson(Map<String, dynamic> json) => MedicoUsuario(
        id: json["_id"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "img": img,
      };
}

class Paciente {
  Paciente({
    this.celular,
    this.id,
    this.usuario,
    this.nombre,
    this.apellido,
  });

  String celular;
  String id;
  PacienteUsuario usuario;
  String nombre;
  String apellido;

  factory Paciente.fromJson(Map<String, dynamic> json) => Paciente(
        celular: json["celular"],
        id: json["_id"],
        usuario: PacienteUsuario.fromJson(json["usuario"]),
        nombre: json["nombre"],
        apellido: json["apellido"],
      );

  Map<String, dynamic> toJson() => {
        "celular": celular,
        "_id": id,
        "usuario": usuario.toJson(),
        "nombre": nombre,
        "apellido": apellido,
      };
}

class PacienteUsuario {
  PacienteUsuario({
    this.id,
  });

  String id;

  factory PacienteUsuario.fromJson(Map<String, dynamic> json) =>
      PacienteUsuario(
        id: json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
      };
}

class MedicoElement {
  MedicoElement({
    this.calificacion,
    this.id,
    this.especialidad,
  });

  int calificacion;
  String id;
  String especialidad;

  factory MedicoElement.fromJson(Map<String, dynamic> json) => MedicoElement(
        calificacion: json["calificacion"],
        id: json["_id"],
        especialidad: json["especialidad"],
      );

  Map<String, dynamic> toJson() => {
        "calificacion": calificacion,
        "_id": id,
        "especialidad": especialidad,
      };
}
