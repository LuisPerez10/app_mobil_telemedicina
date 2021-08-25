import 'package:app_movil_telemedicina/widgets/image_circle_widget.dart';
import 'package:flutter/material.dart';

class PerfilMedico extends StatelessWidget {
  final String title;
  final String subtitle;
  final String horario;
  final String puntuaciacion;
  final String tiempo;
  final String img;

  const PerfilMedico(
      {Key key,
      this.title,
      this.subtitle,
      this.horario,
      this.puntuaciacion,
      this.tiempo,
      this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.35,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            width: size.width,
            child: Container(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    shadowColor: Colors.grey,
                    elevation: 2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: size.width * .7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(this.puntuaciacion ?? '')
                              ],
                            ),
                          ),
                          Center(
                              child: Text('Dr.' + this.title ?? '',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ))),
                          Center(
                              child: Text(this.subtitle,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color:
                                          Color.fromARGB(255, 124, 125, 126)))),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.green,
                                        ),
                                        Text('   Cuenta Verificada'),
                                      ],
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('Horarios',
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          )),
                                    ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text('Duracion por cita',
                                          style: TextStyle(
                                            fontSize: 17.0,
                                          )),
                                    )),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Lunes a Domingo',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(this.tiempo + " Min",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Color.fromARGB(
                                                  255, 124, 125, 126))),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(this.horario,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Color.fromARGB(
                                                  255, 124, 125, 126))),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
          ),
          Positioned(
            top: 0,
            width: size.width,
            child: ImageCircleWidget(
              padding: 5.0,
              fotoUrl: this.img,
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
