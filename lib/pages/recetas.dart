import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:adobe_xd/pinned.dart';

class RecetasPage extends StatelessWidget {
  const RecetasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: Stack(children: [
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
            "Recetas Medicas",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 17,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 166.0, start: 28.0),
          Pin(size: 20.0, middle: 0.2224),
          child: Text(
            'Tus Recetas Medicas',
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
          Pin(start: 165, end: 0.0),
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
                    child: _cargarRecetas(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget _cargarRecetas(BuildContext context) {
  return Container();
}
