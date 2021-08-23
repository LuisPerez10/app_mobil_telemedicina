import 'package:app_movil_telemedicina/global/environment.dart';

import 'package:app_movil_telemedicina/models/fichas_medicas.dart';

// import 'package:app_movil_telemedicina/models/fichas_medicas.dart';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class BusquedaMedicoService with ChangeNotifier {
  FichaMedicas fichaMedicas;

  final _storage = new FlutterSecureStorage();

  Future<FichaMedicas> getFichaMedicas() async {
    final token = await this._storage.read(key: 'token');

    final resp = await http.get('${Environment.apiUrl}/fichamedica/paciente',
        headers: {'Content-Type': 'application/json', 'x-token': token});

    if (resp.statusCode == 200) {
      this.fichaMedicas = fichaMedicasFromJson(resp.body);
      return this.fichaMedicas;
    } else {
      this.fichaMedicas = FichaMedicas();
      return this.fichaMedicas;
    }

    //print(resp.body);
  }
}
