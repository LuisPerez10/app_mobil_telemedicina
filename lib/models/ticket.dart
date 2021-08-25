// To parse this JSON data, do
//
//     final ticketsResponse = ticketsResponseFromJson(jsonString);

import 'dart:convert';

TicketsResponse ticketsResponseFromJson(String str) =>
    TicketsResponse.fromJson(json.decode(str));

String ticketsResponseToJson(TicketsResponse data) =>
    json.encode(data.toJson());

class TicketsResponse {
  TicketsResponse({
    this.ok,
    this.fecha,
    this.tiques,
  });

  bool ok;
  String fecha;
  List<Tique> tiques;

  factory TicketsResponse.fromJson(Map<String, dynamic> json) =>
      TicketsResponse(
        ok: json["ok"],
        fecha: json["fecha"],
        tiques: (json["tiques"] != null)
            ? List<Tique>.from(json["tiques"].map((x) => Tique.fromJson(x)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "fecha": fecha,
        "tiques": List<dynamic>.from(tiques.map((x) => x.toJson())),
      };
}

class Tique {
  Tique({
    this.horaInicio,
    this.horaFin,
    this.tiempo,
  });

  String horaInicio;
  String horaFin;
  String tiempo;

  factory Tique.fromJson(Map<String, dynamic> json) => Tique(
        horaInicio: json["horaInicio"],
        horaFin: json["horaFin"],
        tiempo: json["tiempo"],
      );

  Map<String, dynamic> toJson() => {
        "horaInicio": horaInicio,
        "horaFin": horaFin,
        "tiempo": tiempo,
      };
}
