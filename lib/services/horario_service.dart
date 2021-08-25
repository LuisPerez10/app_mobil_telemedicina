import 'dart:convert';
import 'package:app_movil_telemedicina/global/environment.dart';
import 'package:app_movil_telemedicina/models/horario.dart';

import 'package:app_movil_telemedicina/models/login_response.dart';
import 'package:app_movil_telemedicina/models/paciente.dart';
import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/reserva.dart';
import 'package:app_movil_telemedicina/models/ticket.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';
import 'package:app_movil_telemedicina/models/foto.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HorarioService with ChangeNotifier {
  Horario horario;
  TicketsResponse ticket;
  // bool _autenticando = false;

  final _storage = new FlutterSecureStorage();

  Future<bool> cargarHorario(String medico) async {
    final token = await this._storage.read(key: 'token');

    final resp = await http.get(
        '${Environment.apiUrl}/horarios/horario/$medico',
        headers: {'Content-Type': 'application/json', 'x-token': token});

    if (resp.statusCode == 200) {
      this.horario = horarioFromJson(resp.body);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> cargarTicket(String medico, String fecha) async {
    final token = await this._storage.read(key: 'token');
    var data = {
      'medico': medico,
      'fecha': fecha,
    };

    final resp = await http.post('${Environment.apiUrl}/tickets/obtenerticket',
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json', 'x-token': token});

    if (resp.statusCode == 200) {
      this.ticket = ticketsResponseFromJson(resp.body);
      return true;
    } else {
      return false;
    }
  }
}
