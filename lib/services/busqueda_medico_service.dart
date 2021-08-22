import 'dart:convert';
import 'package:app_movil_telemedicina/global/environment.dart';
import 'package:app_movil_telemedicina/models/busqueda_medico.dart';
import 'package:app_movil_telemedicina/models/listaMedico.dart';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class BusquedaMedicoService with ChangeNotifier {
  //final _storage = new FlutterSecureStorage();
  List<MedicoResponse> listamedicos;

  Future<List<MedicoResponse>> buscarMedicos(String fullname) async {
    //    final token = await this._storage.read(key: 'token');

   
    final data = {"nombre": fullname};

    final resp = await http.post(
        '${Environment.apiUrl}/medicos/getmedicobynombre',
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'});

    if (resp.statusCode == 200) {
      final response = listaMedicosFromJson(resp.body);
      this.listamedicos = response.listamedicos;

      return this.listamedicos;
    } else {
      this.listamedicos = [];
      return this.listamedicos;
    }
  }

  getEspecialidades() async {
    //   final token = await this._storage.read(key: 'token');

    final resp =
        await http.get('${Environment.apiUrl}/especialidad/getespecialidades');

    //print(resp.body);
  }
}
