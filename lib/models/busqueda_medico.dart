import 'dart:convert';

import 'package:app_movil_telemedicina/models/listaMedico.dart';
import 'package:app_movil_telemedicina/models/medico.dart';
import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';

// To parse this JSON data, do
//
//     final listaMedicos = listaMedicosFromJson(jsonString);

// To parse this JSON data, do
//
//     final listaMedicos = listaMedicosFromJson(jsonString);

ListaMedicos listaMedicosFromJson(String str) =>
    ListaMedicos.fromJson(json.decode(str));

String listaMedicosToJson(ListaMedicos data) => json.encode(data.toJson());

class ListaMedicos {
  ListaMedicos({
    this.ok,
    this.listamedicos,
  });

  bool ok;
  List<MedicoResponse> listamedicos;

  factory ListaMedicos.fromJson(Map<String, dynamic> json) => ListaMedicos(
        ok: json["ok"],
        listamedicos: List<MedicoResponse>.from(
            json["listamedicos"].map((x) => MedicoResponse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "listamedicos": List<dynamic>.from(listamedicos.map((x) => x.toJson())),
      };
}
