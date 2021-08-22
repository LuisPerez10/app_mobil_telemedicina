import 'package:animate_do/animate_do.dart';
import 'package:app_movil_telemedicina/global/environment.dart';
import 'package:app_movil_telemedicina/search/search_delegate.dart';
import 'package:app_movil_telemedicina/services/busqueda_medico_service.dart';
import 'package:app_movil_telemedicina/widgets/form_field_input/form_field_input.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Buscar_Medicos extends StatefulWidget {
  Buscar_Medicos({
    Key key,
  }) : super(key: key);

  @override
  _Buscar_MedicosState createState() => _Buscar_MedicosState();
}

final nombreCtrl = TextEditingController();

class _Buscar_MedicosState extends State<Buscar_Medicos> {
  List especialidades;

  @override
  void initState() {
    _cargarEspecialidades();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              'Buscar y Reservar Cita',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: FadeInDown(
                duration: Duration(milliseconds: 300),
                child: buildSearchBar(context)),
          ),
          Pinned.fromPins(
            Pin(size: 166.0, start: 28.0),
            Pin(size: 20.0, middle: 0.2424),
            child: Text(
              'Lista de especialidades',
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
                      child: new ListView.builder(
                        //   reverse: false,
                        itemCount:
                            especialidades == null ? 0 : especialidades.length,
                        itemBuilder: (_, int index) =>
                            EachList(especialidades[index]["nombre"]),
                      ),
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

class EachList extends StatelessWidget {
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(name[0]),
            ),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(
              name,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildSearchBar(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

  var search = '';

  return SafeArea(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 15),
        FormFieldInput(
          placeholder: "Buscando...",
          labelText: "Médicos...",
          suffixIcon: Icon(Icons.search),
          textController: nombreCtrl,
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            // persona.nombre = value;
            search = value;
            print(value);
          },
          onTap: () {
            showSearch(context: context, delegate: DataSearch());
          },
        ),
      ],
    ),
  );
}
