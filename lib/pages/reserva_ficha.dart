import 'package:app_movil_telemedicina/models/listaMedico.dart';
import 'package:flutter/material.dart';

class reservaFicha extends StatelessWidget {
  // const reservaFicha({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MedicoResponse perfil = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(perfil.usuario.nombre),
                MaterialButton(
                    child: Text('Buscar Medico',
                        style: TextStyle(color: Colors.white)),
                    color: Theme.of(context).primaryColor,
                    shape: StadiumBorder(),
                    elevation: 0,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
