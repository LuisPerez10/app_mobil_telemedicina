import 'package:animate_do/animate_do.dart';
import 'package:app_movil_telemedicina/global/environment.dart';
import 'package:app_movil_telemedicina/models/listaMedico.dart';

import 'package:app_movil_telemedicina/services/busqueda_medico_service.dart';
import 'package:app_movil_telemedicina/widgets/my_custom_list.dart';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class FichaMedica extends StatefulWidget {
  FichaMedica({
    Key key,
  }) : super(key: key);

  @override
  _FichaMedicaState createState() => _FichaMedicaState();
}

class _FichaMedicaState extends State<FichaMedica> {
  List especialidades;

  @override
  void initState() {
    _cargarEspecialidades();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String especialidad = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 171.0, start: -28.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xff40bdf3),
              ),
            ),
          ),
          Positioned(
              top: 50,
              left: 14,
              child: Row(
                children: [
                  FadeInLeft(
                    duration: Duration(milliseconds: 300),
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.transparent,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ),
                ],
              )),
          Pinned.fromPins(
            Pin(size: 195.0, start: 70.0),
            Pin(size: 24.0, start: 62.5),
            child: Text(
              especialidad,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          //   child: FadeInDown(
          //       duration: Duration(milliseconds: 300),
          //       child: buildSearchBar(context)),
          // ),
          Pinned.fromPins(
            Pin(size: 166.0, start: 28.0),
            Pin(size: 20.0, middle: 0.2424),
            child: Text(
              'Tu lista de fichas',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff313450),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 200, end: 0.0),
            child: // Adobe XD layer: 'Grupo lista de medi…' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffffffff),
                      ),
                      child: _cargarFichas(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _cargarEspecialidades() async {
    final resp =
        await http.get('${Environment.apiUrl}/especialidad/getespecialidades');

    final data = json.decode(resp.body);
    // print(data["especialidades"]);
    setState(() {
      especialidades = data["especialidades"];
      print(especialidades.length);
    });
  }
}

Widget _cargarFichas(BuildContext context) {

}

Widget _cargarMedicos(BuildContext context, String especialidad) {
  //return Container( child: Center(child: Text(especialidad),));
  final busquedaService = new BusquedaMedicoService();

  return FutureBuilder(
    future: busquedaService.buscarMedicos(especialidad),
    builder:
        (BuildContext context, AsyncSnapshot<List<MedicoResponse>> snapshot) {
      if (!snapshot.hasError) {
        if (snapshot.hasData) {
          var medicos = snapshot.data;
          if (medicos.length == 0) {
            return Center(child: Text('no hay respuesta'));
          }

          return ListView.builder(
            itemCount: medicos.length,
            itemBuilder: (BuildContext context, int index) {
              return MyCustomList(
                  title: medicos[index].usuario.nombre,
                  subtitle: medicos[index].medico.especialidad,
                  imgUri: medicos[index].usuario.img,
                  medico: medicos[index],
                  onPressed: () {
                    Navigator.of(context).pushNamed('reserva', arguments: medicos[index]);
                  });
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      } else {
        return Center(child: Text("No se pudo conectar con el servidor"));
      }
    },
  );
}

