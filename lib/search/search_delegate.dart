import 'package:app_movil_telemedicina/models/listaMedico.dart';
import 'package:app_movil_telemedicina/models/medico.dart';
import 'package:app_movil_telemedicina/services/busqueda_medico_service.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  final peliculas = ['sherk1', 'sherk2', 'ironman'];
  final peliculasRecientes = ['Spiderman', 'Capitan america', 'superman'];

  final busquedaService = new BusquedaMedicoService();

  String seleccion = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    // Las acciones de nuestro Appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // crea los resultados que vamos a mostrar
    
    return FutureBuilder(
      future: busquedaService.buscarMedicos(query),
      builder:
          (BuildContext context, AsyncSnapshot<List<MedicoResponse>> snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.hasData) {
            var medicos = snapshot.data;
            if (medicos.length == 0) {
              return Center(child: Text('no hay respuesta'));
            }

            // return ListView(
            //   children: medicos.map((medico) {
            //     return ListTile(
            //       leading: FadeInImage(
            //         image: NetworkImage(medicos[0].usuario.img),
            //       ),
            //     );
            //   }).toList();

            return ListView.builder(
              itemCount: medicos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: FadeInImage(
                      image: NetworkImage(medicos[index].usuario.img),
                      placeholder: AssetImage('assets/no-img.jpg'),
                      width: 50.0,
                      fit: BoxFit.contain,
                    ),
                    title: Text(medicos[index].usuario.nombre),
                    subtitle: Text("Especialidad: " + medicos[index].medico.especialidad),
                    trailing: Icon(Icons.arrow_right_sharp),
                    onTap: () {
                      close(context, null);
                      Navigator.pushNamed(context, 'reserva', arguments: medicos[index]);
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

  @override
  Widget buildSuggestions(BuildContext context) {
    // Tlas sugerencias que aparecen cuando la persona escribe
    // final listaSugerida = (query.isEmpty)
    //     ? peliculasRecientes
    //     : peliculas
    //         .where((element) =>
    //             element.toLowerCase().startsWith(query.toLowerCase()))
    //         .toList();

    // return ListView.builder(
    //   itemCount: listaSugerida.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(
    //       leading: Icon(Icons.movie),
    //       title: (Text(listaSugerida[index])),
    //       onTap: () {
    //         seleccion = listaSugerida[index];
    //         showResults(context);
    //       },
    //     );
    //   },
    // );

    if (query.isEmpty) {
      return Container();
    }

    return FutureBuilder(
      future: busquedaService.buscarMedicos(query),
      builder:
          (BuildContext context, AsyncSnapshot<List<MedicoResponse>> snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.hasData) {
            var medicos = snapshot.data;
            if (medicos.length == 0) {
              return Center(child: Text('no hay respuesta'));
            }

            // return ListView(
            //   children: medicos.map((medico) {
            //     return ListTile(
            //       leading: FadeInImage(
            //         image: NetworkImage(medicos[0].usuario.img),
            //       ),
            //     );
            //   }).toList();

            return ListView.builder(
              itemCount: medicos.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: FadeInImage(
                      image: NetworkImage(medicos[index].usuario.img),
                      placeholder: AssetImage('assets/no-img.jpg'),
                      width: 50.0,
                      fit: BoxFit.contain,
                    ),
                    title: Text(medicos[index].usuario.nombre),
                    subtitle: Text("Especialidad: " + medicos[index].medico.especialidad),
                    trailing: Icon(Icons.arrow_right_sharp),
                    onTap: () {
                      close(context, null);
                      Navigator.pushNamed(context, 'reserva', arguments: medicos[index]);
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
}
