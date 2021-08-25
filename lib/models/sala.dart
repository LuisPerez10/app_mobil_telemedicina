
// To parse this JSON data, do
//
//     final sala = salaFromJson(jsonString);

import 'dart:convert';

Sala salaFromJson(String str) => Sala.fromJson(json.decode(str));

String salaToJson(Sala data) => json.encode(data.toJson());

class Sala {
    Sala({
        this.estado,
        this.id,
        this.room,
    });

    String estado;
    String id;
    String room;

    factory Sala.fromJson(Map<String, dynamic> json) => Sala(
        estado: json["estado"],
        id: json["_id"],
        room: json["room"],
    );

    Map<String, dynamic> toJson() => {
        "estado": estado,
        "_id": id,
        "room": room,
    };
}
