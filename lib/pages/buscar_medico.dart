import 'package:app_movil_telemedicina/models/medico.dart';
import 'package:app_movil_telemedicina/services/busqueda_medico_service.dart';

import 'package:app_movil_telemedicina/widgets/form_field_input/form_field_input.dart';
import 'package:app_movil_telemedicina/widgets/my_custom_list.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

import 'package:flutter/services.dart';

class BuscarMedico extends StatefulWidget {
  @override
  _BuscarMedicoState createState() => _BuscarMedicoState();
}

final nombreCtrl = TextEditingController();

class _BuscarMedicoState extends State<BuscarMedico> {
  @override
  Widget build(BuildContext context) {
    //   final busquedaMedicoService = Provider.of<BusquedaMedicoService>(context, listen: false);

    return Scaffold(
      body: 
         Container(
          //  width: 200,
            //height: 435,
          color: Colors.blue,
          child: Column(
             mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                 
                  color: Colors.red,
            //height:435,
        child: Column(
          children: [
            Positioned(
                    top: 50,
                    left: 50,
                    child: Row(

                      children: [
                        FadeInLeft(
                          duration: Duration(milliseconds: 150),
                          child: CircleAvatar(
                            maxRadius: 25,
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Icon(Icons.arrow_back, color: Colors.black),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, 'home');
                                }),
                          ),
                        ),
                       
                        Text('BUSCAR Y RESERVAR CITA'),
                      ],
                    )
                    ),

                     FadeInDown(
                  duration: Duration(milliseconds: 300),
                  child: buildSearchBar(context)),
          ],
        ),
              ),
             Container(
               height: 400,
               width: MediaQuery.of(context).size.width,

                color: Colors.green,
                child: Column(
                      mainAxisSize: MainAxisSize.max,
                  children: [
                    mylistmedico(),
                  ],
                ),
             ),
            ],
          ),
        )
        
    );
  }
}

Widget buildSearchBar(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  // final busquedaMedicoService =
  //     Provider.of<BusquedaMedicoService>(context, listen: false);

  // Medico medico = busquedaMedicoService.medico;
  // Persona persona = busquedaMedicoService.persona;

  var search = '';

  return SafeArea(
    child:  Column(
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
            ),
            SizedBox(height: 30),
            Text('Lista de Especialidades'),
            SizedBox(height: 20),
            MaterialButton(
                child: Text('Buscar Medico',
                    style: TextStyle(color: Colors.white)),
                color: Theme.of(context).primaryColor,
                shape: StadiumBorder(),
                elevation: 0,
                splashColor: Colors.transparent,
                onPressed: () async {
               //   _getmedico(context);
                }),
          ],
        ),
  );
}

// _getmedico(BuildContext context) async {
//   final busquedaMedicoService =
//       Provider.of<BusquedaMedicoService>(context, listen: false);
//   final respuesta = await busquedaMedicoService.buscarMedicos("yulisa");

//   if (respuesta) {
//     List<Medico> listamedicos = busquedaMedicoService.listamedicos;
//     print(listamedicos[0].especialidad);
//   }

//   //print(respuesta);
// }

Widget mylistmedico() {
  final nombre = 'nombre del medico';
  final subtitle = 'especialidad del medico';

  // return ListView.builder(
  //   itemCount: 4,
  //   itemBuilder: (BuildContext context, int index) {
  //     return  MyCustomList( title:nombre, subtitle:subtitle);
  //   },
  // );
  
     return Column(
      children: [
       MyCustomList( title:nombre, subtitle:subtitle),
        Divider(),
         MyCustomList( title:nombre, subtitle:subtitle),
        Divider(),
         MyCustomList( title:nombre, subtitle:subtitle),
        Divider(),
         MyCustomList( title:nombre, subtitle:subtitle),
      ],
   );

}
