import 'dart:async';

import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';
import 'package:app_movil_telemedicina/models/paciente.dart';

import 'package:app_movil_telemedicina/services/paciente_service.dart';

class PacienteBloc {
  String paciente;
  final _pacienteService = PacienteService();

  String get getPaciente => paciente;
  // Future registrarPaciente(Paciente paciente) async {
  //   this.paciente = await _pacienteService.registrarPaciente(paciente);
  // }
  Future registrarPaciente(
    Usuario usuario,
    Persona persona,
    Paciente paciente,
  ) async {
    await _pacienteService.registrar(usuario, persona, paciente).then((value) {
      print(value['ok']);
      print(value);
      if (value['ok']) {
        // this.usuario = value['usuario'];
        // this.paciente = value['paciente'];
        print(value);
      }
    });
  }
}
