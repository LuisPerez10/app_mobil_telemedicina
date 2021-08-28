import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_movil_telemedicina/models/persona.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';
import 'package:app_movil_telemedicina/pages/Registro/formPaciente.dart';
import 'package:app_movil_telemedicina/pages/Registro/formUsuario.dart';
import 'package:app_movil_telemedicina/bloc/Paciente_bloc.dart';
import 'package:app_movil_telemedicina/models/foto.dart';
import 'package:app_movil_telemedicina/models/paciente.dart';
import 'package:app_movil_telemedicina/models/user_register.dart';
import 'package:app_movil_telemedicina/services/upload_service.dart';

class RegisterPacientePage extends StatefulWidget {
  RegisterPacientePage({Key key}) : super(key: key);

  @override
  _RegisterPacientePageState createState() => _RegisterPacientePageState();

  static _RegisterPacientePageState of(BuildContext context) =>
      context.findAncestorStateOfType<_RegisterPacientePageState>();
}

class _RegisterPacientePageState extends State<RegisterPacientePage> {
  FormUsuario formUsuario = FormUsuario();
  FormPaciente formPaciente = FormPaciente();

  List<Step> steps;
  int currentStep = 0;
  bool complete = false;
  Paciente paciente = Paciente();
  Persona persona = Persona();
  Usuario usuario = Usuario();
  Foto foto = Foto();
  StepperType stepperType = StepperType.horizontal;

  // PacienteServiciosBloc pacienteServiciosBloc = PacienteServiciosBloc();
  final pacienteBloc = PacienteBloc();
  FileUploadService fileuploadService = FileUploadService();

  switchStepType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.vertical
        : stepperType = StepperType.horizontal);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _systemChromeColor(Brightness.dark);

    // pacienteServiciosBloc =
    //     Provider.of<PacienteServiciosBloc>(context, listen: false);
    steps = crearSteps(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            complete
                ? Expanded(
                    child: Center(
                      child: AlertDialog(
                        title: new Text("Usuario Creado con exito"),
                        content: new Text(
                          "Se ha enviado un correo electronico a ${usuario.email} para confirmar tu cuenta",
                        ),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("Inicio"),
                            onPressed: () {
                              setState(() {});
                              Navigator.pushNamedAndRemoveUntil(context,
                                  'welcome', (Route<dynamic> route) => false);
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Stepper(
                      type: stepperType,
                      steps: steps,
                      controlsBuilder: (context,
                          {onStepCancel, onStepContinue}) {
                        return Row(
                          children: [
                            Container(
                              child: FlatButton(
                                child: Text(
                                  "Atras",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onPressed: onStepCancel,
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Container(
                              color: !formUsuario.validate
                                  ? Colors.grey
                                  : Colors.blue,
                              child: TextButton(
                                child: Text(
                                  "Siguiente",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: !formUsuario.validate
                                    ? null
                                    : () => {
                                          print(paciente.toJson()),
                                          onStepContinue(),
                                        },
                              ),
                            )
                          ],
                        );
                      },
                      currentStep: currentStep,
                      onStepContinue: next,
                      // onStepTapped: (step) => goTo(step),
                      onStepCancel: cancel,
                    ),
                  ),
          ],
        ),
      ),
      // drawer: Drawer(
      //   // elevation: 10,
      //   child: Container(
      //       margin: EdgeInsets.all(10),
      //       padding: EdgeInsets.all(10),
      //       child: ListViewWidget()),
      // ),
      // Scaffold
      // floatingActionButton: botonesFlotantes(),
    );
  }

  next() async {
    bool estaValidado;

    switch (currentStep) {
      case 0:
        estaValidado = formUsuario.formKey.currentState.validate();

        estaValidado ? formUsuario.formKey.currentState.save() : null;
        // estaValidado = true;
        break;
      case 1:
        estaValidado = formPaciente.formKey.currentState.validate();
        print('estaValidado');
        print(estaValidado);
        if (estaValidado) {
          await registrarPaciente(context);
        }

        break;
      default:
        estaValidado = false;
    }
    estaValidado = true;

    if (estaValidado) {
      if (currentStep + 1 != steps.length) {
        goTo(currentStep + 1);
      } else {
        setState(() {
          complete = true;
        });
      }
    }
  }
  // crear selecccionar Categoria Servicios y horarios

  Widget botonesFlotantes() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        Visibility(
          visible: false,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              // cancel();
            },
            backgroundColor: false ? Colors.blue : Colors.grey[350],
            splashColor: Colors.red,
            foregroundColor: Colors.grey[100],
          ),
        ),
        Expanded(child: SizedBox()),
        Visibility(
          visible: false,
          child: FloatingActionButton(
              child: Icon(Icons.list_alt),
              onPressed: () {
                switchStepType();
              }),
        ),
        SizedBox(
          width: 5.0,
        ),
        Visibility(
          visible: false,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () {
              next();
            },
          ),
        ),
      ],
    );
  }

  currentStepState(int step) {
    if (currentStep < step) {
      return StepState.indexed;
    } else if (currentStep == step) {
      return StepState.editing;
    } else {
      return StepState.complete;
    }
  }

  List<Step> crearSteps([BuildContext context]) {
    return [
      Step(
        title: Text('Paciente'),
        isActive: currentStep >= 0,
        state: currentStepState(0),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            formUsuario,
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      Step(
        isActive: currentStep >= 1,
        state: currentStepState(1),
        title: Text('Datos Medicos'),
        content: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            formPaciente,
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )
    ];
  }

  registrarPaciente(BuildContext context) async {
    print('antes accion');

    // final notificacion =
    //     Provider.of<NotificationsService>(context, listen: false);

    usuario.img = await fileuploadService.subirImagen(foto.value);

    await pacienteBloc.registrarPaciente(usuario, persona, paciente);

    // await notificacion.guardarTokenFCMByEmailServices(userRegister.email);

    print('End action');
  }

  void _systemChromeColor(Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: brightness,
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
