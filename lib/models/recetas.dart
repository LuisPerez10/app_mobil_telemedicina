// To parse this JSON data, do
//
//     final recetas = recetasFromJson(jsonString);

import 'dart:convert';

Recetas recetasFromJson(String str) => Recetas.fromJson(json.decode(str));

String recetasToJson(Recetas data) => json.encode(data.toJson());

class Recetas {
    Recetas({
        this.ok,
        this.recetas,
        this.medico,
    });

    bool ok;
    List<Receta> recetas;
    List<Medico> medico;

    factory Recetas.fromJson(Map<String, dynamic> json) => Recetas(
        ok: json["ok"],
        recetas: List<Receta>.from(json["recetas"].map((x) => Receta.fromJson(x))),
        medico: List<Medico>.from(json["medico"].map((x) => Medico.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "recetas": List<dynamic>.from(recetas.map((x) => x.toJson())),
        "medico": List<dynamic>.from(medico.map((x) => x.toJson())),
    };
}

class Medico {
    Medico({
        this.id,
        this.nombre,
        this.apellido,
    });

    String id;
    String nombre;
    String apellido;

    factory Medico.fromJson(Map<String, dynamic> json) => Medico(
        id: json["_id"],
        nombre: json["nombre"],
        apellido: json["apellido"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "nombre": nombre,
        "apellido": apellido,
    };
}

class Receta {
    Receta({
        this.prescripcion,
        this.estado,
        this.numero,
        this.fecha,
        this.id,
        this.medicamentos,
        this.consulta,
    });

    String prescripcion;
    String estado;
    String numero;
    DateTime fecha;
    String id;
    List<Medicamento> medicamentos;
    String consulta;

    factory Receta.fromJson(Map<String, dynamic> json) => Receta(
        prescripcion: json["prescripcion"],
        estado: json["estado"],
        numero: json["numero"],
        fecha: DateTime.parse(json["fecha"]),
        id: json["_id"],
        medicamentos: List<Medicamento>.from(json["medicamentos"].map((x) => Medicamento.fromJson(x))),
        consulta: json["consulta"],
    );

    Map<String, dynamic> toJson() => {
        "prescripcion": prescripcion,
        "estado": estado,
        "numero": numero,
        "fecha": fecha.toIso8601String(),
        "_id": id,
        "medicamentos": List<dynamic>.from(medicamentos.map((x) => x.toJson())),
        "consulta": consulta,
    };
}

class Medicamento {
    Medicamento({
        this.marca,
        this.via,
        this.frecuencia,
        this.duracion,
        this.id,
        this.cantidad,
    });

    String marca;
    String via;
    String frecuencia;
    String duracion;
    String id;
    int cantidad;

    factory Medicamento.fromJson(Map<String, dynamic> json) => Medicamento(
        marca: json["marca"],
        via: json["via"],
        frecuencia: json["frecuencia"],
        duracion: json["duracion"],
        id: json["_id"],
        cantidad: json["cantidad"],
    );

    Map<String, dynamic> toJson() => {
        "marca": marca,
        "via": via,
        "frecuencia": frecuencia,
        "duracion": duracion,
        "_id": id,
        "cantidad": cantidad,
    };
}
