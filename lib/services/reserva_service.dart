import 'dart:convert';
import 'package:app_movil_telemedicina/global/environment.dart';

import 'package:app_movil_telemedicina/models/reserva.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ReservaService with ChangeNotifier {
  Reserva reserva;

  final _storage = new FlutterSecureStorage();

  Future<bool> crearReserva(String medico, String paciente, DateTime fecha,
      DateTime horaInicio, String tiempo) async {
    final token = await this._storage.read(key: 'token');
    var data = {
      'medico': medico,
      'paciente': paciente,
      'fecha': fecha.toIso8601String(),
      'horaInicio': horaInicio.toIso8601String(),
      'tiempo': tiempo,
    };

    final resp = await http.post('${Environment.apiUrl}/fichamedica',
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json', 'x-token': token});

    if (resp.statusCode == 200) {
      // this.reserva = reservaFromJson(resp.body);
      return true;
    } else {
      return false;
    }
  }
}
