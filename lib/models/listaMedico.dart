// To parse this JSON data, do
//
//     final listaMedico = listaMedicoFromJson(jsonString);

import 'dart:convert';

import 'package:app_movil_telemedicina/models/medico.dart';
import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';

MedicoResponse medicoResponseFromJson(String str) => MedicoResponse.fromJson(json.decode(str));

String medicoResponseToJson(MedicoResponse data) => json.encode(data.toJson());

class MedicoResponse {
    MedicoResponse({
        this.usuario,
        this.persona,
        this.medico,
    });

    Usuario usuario;
    Persona persona;
    Medico medico;

    factory MedicoResponse.fromJson(Map<String, dynamic> json) => MedicoResponse(
        usuario: Usuario.fromJson(json["usuario"]),
        persona: Persona.fromJson(json["persona"]),
        medico: Medico.fromJson(json["medico"]),
    );

    Map<String, dynamic> toJson() => {
        "usuario": usuario.toJson(),
        "persona": persona.toJson(),
        "medico": medico.toJson(),
    };
}
