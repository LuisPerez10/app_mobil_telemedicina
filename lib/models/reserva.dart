// To parse this JSON data, do
//
//     final reserva = reservaFromJson(jsonString);

import 'dart:convert';

Reserva reservaFromJson(String str) => Reserva.fromJson(json.decode(str));

String reservaToJson(Reserva data) => json.encode(data.toJson());

class Reserva {
  Reserva({
    this.paciente,
    this.medico,
    this.nroFicha,
    this.fecha,
    this.horaInicio,
  });

  String paciente;
  String medico;
  String nroFicha;
  DateTime fecha;
  DateTime horaInicio;

  factory Reserva.fromJson(Map<String, dynamic> json) => Reserva(
        paciente: json["paciente"],
        medico: json["medico"],
        nroFicha: json["nroFicha"],
        fecha: DateTime.parse(json["fecha"]),
        horaInicio: DateTime.parse(json["horaInicio"]),
      );

  Map<String, dynamic> toJson() => {
        "paciente": paciente,
        "medico": medico,
        "nroFicha": nroFicha,
        "fecha": fecha.toIso8601String(),
        "horaInicio": horaInicio.toIso8601String(),
      };
}
