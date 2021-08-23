// To parse this JSON data, do
//
//     final listaMedico = listaMedicoFromJson(jsonString);

import 'dart:convert';

FichaMedicas fichaMedicasFromJson(String str) => FichaMedicas.fromJson(json.decode(str));

String fichaMedicasToJson(FichaMedicas data) => json.encode(data.toJson());

class FichaMedicas {
    FichaMedicas({
        this.fichaMedicas,
    });

    List<FichaMedica> fichaMedicas;

    factory FichaMedicas.fromJson(Map<String, dynamic> json) => FichaMedicas(
        fichaMedicas: List<FichaMedica>.from(json["fichaMedicas"].map((x) => FichaMedica.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "fichaMedicas": List<dynamic>.from(fichaMedicas.map((x) => x.toJson())),
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
    PersonaResponse paciente;
    PersonaResponse medico;
    DateTime horaInicio;

    factory FichaMedica.fromJson(Map<String, dynamic> json) => FichaMedica(
        nroFicha: json["nroFicha"],
        fecha: DateTime.parse(json["fecha"]),
        id: json["_id"],
        estado: json["estado"],
        paciente: PersonaResponse.fromJson(json["paciente"]),
        medico: PersonaResponse.fromJson(json["medico"]),
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

class PersonaResponse {
    PersonaResponse({
        this.celular,
        this.id,
        this.usuario,
        this.nombre,
        this.apellido,
    });

    String celular;
    String id;
    UsuarioId usuario;
    String nombre;
    String apellido;

    factory PersonaResponse.fromJson(Map<String, dynamic> json) => PersonaResponse(
        celular: json["celular"],
        id: json["_id"],
        usuario: UsuarioId.fromJson(json["usuario"]),
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

class UsuarioId {
    UsuarioId({
        this.id,
    });

    String id;

    factory UsuarioId.fromJson(Map<String, dynamic> json) => UsuarioId(
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
    };
}
