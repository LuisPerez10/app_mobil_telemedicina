import 'package:flutter/material.dart';
import 'package:goldenhands/pages/Registro/register_paciente_page.dart';
import 'package:goldenhands/pages/home_page.dart';
import 'package:goldenhands/pages/login_page.dart';
import 'package:goldenhands/pages/perfil_page.dart';
import 'package:goldenhands/pages/tapbar_page.dart';
import 'package:goldenhands/pages/welcome_page.dart';
import 'package:goldenhands/pages/loading_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'loading': (BuildContext c) => LoadingPage(),
  'home': (BuildContext c) => HomePage(),
  'perfil': (BuildContext c) => PerfilPage(),
  'welcome': (BuildContext c) => WelcomePage(),
  'login': (BuildContext c) => LoginPage(),
  'register_paciente': (BuildContext c) => RegisterPacientePage(),
  'tapbar': (BuildContext c) => TapBarPage(),
};
