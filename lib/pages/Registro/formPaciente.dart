import 'package:flutter/material.dart';
import 'package:app_movil_telemedicina/helpers/input_formatter.dart';
import 'package:app_movil_telemedicina/helpers/validar.dart';

import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';
import 'package:app_movil_telemedicina/pages/Registro/register_paciente_page.dart';
import 'package:app_movil_telemedicina/widgets/checkbox_w.dart';


// typedef SCallback = Function(Trabajador persona);

class FormPaciente extends StatefulWidget {
  final Function(Usuario, Persona) callback;

  FormPaciente({Key key, this.callback}) : super(key: key);

  final bool validate = true;
  final formKey = GlobalKey<FormState>();
  // final PickedFile foto = Pick;

  // static F_formPacienteState of(BuildContext context) =>
  //     context.findAncestorStateOfType<F_formPacienteState>();

  @override
  F_formPacienteState createState() => F_formPacienteState();
}

final emailCtrl = TextEditingController();
bool isvalidEmail = true;
final nombreCtrl = TextEditingController();
final apellidoCtrl = TextEditingController();
final celularCtrl = TextEditingController();
final fechaNacimientoCtrl = TextEditingController();
final generoCtrl = TextEditingController(text: "Hombre");
final direccionCtrl = TextEditingController();
final passCtrl = TextEditingController();
final pass2Ctrl = TextEditingController();

final validar = Validar();
// PickedFile foto;

class F_formPacienteState extends State<FormPaciente> {
  @override

  BuildContext get context => super.context;

  @override
  void dispose() {
    // RegisterTrabajadorPage.of(context).persona = persona;
    super.dispose();
    print('dispose');
  }

  @override
  void initState() {
    print('InitState');
    print(emailCtrl.text);
    print(nombreCtrl.text);
  }

  List<String> _generos = ["Hombre", "Mujer"];
  final maskFormatter = getInputFormaterCelular();

  @override
  Widget build(BuildContext context) {
    final paciente = RegisterPacientePage.of(context).paciente;

    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          Column(
            children: [
              Container(
                child: Text('Registrate',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w300)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Agrega tus detalles para registrarte',
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 124, 125, 126)),
              )
            ],
          ),
          SizedBox(height: 20.0),
          DemoCheck(
            titulo: "Grupo Sanguineo",
            listValues: ["A", "B", "O", "AB", "S/N"],
            callback: (list) {
              paciente.grupoSanguineo = list.length > 0 ? list[0] : "";
            },
          ),
          SizedBox(
            height: 30,
            child: Divider(),
          ),
          DemoCheck(
            titulo: "Factor RH",
            listValues: ["RH+", "RH-", "S/N"],
            callback: (list) {
              paciente.factorSanguineo = list.length > 0 ? list[0] : "";
            },
          ),
          SizedBox(
            height: 30,
            child: Divider(),
          ),
          DemoCheck(
            titulo: "Alergias",
            listValues: [
              "Medicamentos",
              "Alimentos",
              "Insectos",
              "Otros",
            ],
            callback: (list) {
              paciente.alergias = list;
            },
          ),
          SizedBox(
            height: 30,
            child: Divider(),
          ),
          DemoCheck(
            titulo: "Enfermedades",
            listValues: [
              "Diabetes",
              "Convulsiones",
              "Asma",
              "Cardiopatias",
              "Hipertensión \n arterial",
              "Artritis",
              "Otros"
            ],
            callback: (list) {
              paciente.enfermedades = list;
            },
          ),
          SizedBox(
            height: 30,
            child: Divider(),
          ),
          DemoCheck(
            titulo: "Vacunas",
            listValues: [
              "Hepatitis B",
              "Tétanos",
              "Fiebre amarilla",
              "Saranpion",
              "VPH",
              "Covid-19"
            ],
            callback: (list) {
              paciente.vacunas = list;
            },
          ),
        ],
      ),
    );
  }
}
