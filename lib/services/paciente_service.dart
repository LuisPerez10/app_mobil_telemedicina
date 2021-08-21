import 'dart:convert';

import 'package:goldenhands/global/environment.dart';
import 'package:goldenhands/models/paciente.dart';
import 'package:goldenhands/models/persona.dart';
import 'package:goldenhands/models/user_register.dart';
import 'package:goldenhands/models/usuario.dart';
import 'package:http/http.dart' as http;

class PacienteService {
  registrarPaciente(Paciente paciente) async {
    final res = await http.post('${Environment.apiUrl}/usuarios',
        body: pacienteToJson(paciente),
        headers: {'Content-Type': 'application/json'});

    if (res.statusCode == 200) {
      // json.decode(res.body);
      final respData = json.decode(res.body);

      return respData['paciente']['_id'];
    }
  }

  Future<dynamic> registrar(
      Usuario usuario, Persona persona, Paciente paciente) async {
    final data = {
      'img': usuario.img,
      ...usuario.toJson(),
      ...persona.toJson(),
      ...paciente.toJson(),
      // 'password': usuario.password,
      // 'role': usuario.role,
    };

    print('data');
    print(data);
    final res = await http.post('${Environment.apiUrl}/usuarios',
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    if (res.statusCode == 200) {
      final respData = json.decode(res.body);
      return {'ok': respData['ok']};
    } else {
      final respData = json.decode(res.body);
      return {'ok': respData['ok']};
      // final respBody = jsonDecode(res.body);
    }
  }

  Future validarEmail(String email) async {
    final res =
        await http.get('${Environment.apiUrl}/usuarios/keyunica?email=$email');

    if (res.statusCode == 200) {
      final respData = json.decode(res.body);
      var esValida = respData['ok'];
      return esValida;
    } else {
      final respData = json.decode(res.body);
      var esValida = respData['ok'];
      return esValida;
    }
  }
}

// validar gmail existente

// trabajar con la imagen en firebase
