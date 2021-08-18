import 'dart:async';

import 'package:goldenhands/models/persona.dart';
import 'package:goldenhands/models/usuario.dart';
import 'package:goldenhands/models/paciente.dart';

import 'package:goldenhands/services/paciente_service.dart';

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
