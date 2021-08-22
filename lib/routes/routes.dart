import 'package:app_movil_telemedicina/pages/buscar_medicos.dart';
import 'package:flutter/material.dart';
import 'package:app_movil_telemedicina/pages/Registro/register_paciente_page.dart';
import 'package:app_movil_telemedicina/pages/home_page.dart';
import 'package:app_movil_telemedicina/pages/login_page.dart';
import 'package:app_movil_telemedicina/pages/perfil_page.dart';
import 'package:app_movil_telemedicina/pages/tapbar_page.dart';
import 'package:app_movil_telemedicina/pages/welcome_page.dart';
import 'package:app_movil_telemedicina/pages/loading_page.dart';
import 'package:app_movil_telemedicina/pages/buscar_medico.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (BuildContext c) => LoadingPage(),
  'home': (BuildContext c) => HomePage(),
  'perfil': (BuildContext c) => PerfilPage(),
  'welcome': (BuildContext c) => WelcomePage(),
  'login': (BuildContext c) => LoginPage(),
  'register_paciente': (BuildContext c) => RegisterPacientePage(),
  'tapbar': (BuildContext c) => TapBarPage(),
  'buscar': (BuildContext c) => BuscarMedico(),
  'buscar2': (BuildContext c) => Buscar_Medicos(),
};
