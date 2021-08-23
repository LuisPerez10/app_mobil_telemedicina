// To parse this JSON data, do
//
//     final fichaMedica = fichaMedicaFromJson(jsonString);

import 'dart:convert';

FichaMedica fichaMedicaFromJson(String str) => FichaMedica.fromJson(json.decode(str));

String fichaMedicaToJson(FichaMedica data) => json.encode(data.toJson());

class FichaMedica {
    FichaMedica({
        this.nroFicha,
        this.fecha,
        this.id,
        this.estado,
        this.horaInicio,
    });

    String nroFicha;
    DateTime fecha;
    String id;
    String estado;
    DateTime horaInicio;

    factory FichaMedica.fromJson(Map<String, dynamic> json) => FichaMedica(
        nroFicha: json["nroFicha"],
        fecha: DateTime.parse(json["fecha"]),
        id: json["_id"],
        estado: json["estado"],
        horaInicio: DateTime.parse(json["horaInicio"]),
    );

    Map<String, dynamic> toJson() => {
        "nroFicha": nroFicha,
        "fecha": fecha.toIso8601String(),
        "_id": id,
        "estado": estado,
        "horaInicio": horaInicio.toIso8601String(),
    };
}
