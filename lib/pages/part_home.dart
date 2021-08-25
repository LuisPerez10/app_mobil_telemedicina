import 'package:app_movil_telemedicina/pages/buscar_medicos.dart';
import 'package:app_movil_telemedicina/pages/ficha_medica.dart';
 import 'package:app_movil_telemedicina/pages/jitsi.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:adobe_xd/page_link.dart';


class partHome extends StatelessWidget {
  partHome({
    Key key,
  }) : super(key: key);
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
          Container(),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.4),
            Pin(size: 218.3, end: 102.1),
            child:
                // Adobe XD layer: 'Grupo de medicos fa…' (group)
                Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 647.0,
                  height: 218.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: -272.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Cuadrícula de medic…' (grid)
                            Scrollbar(
                          child: SingleChildScrollView(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 20,
                              runSpacing: 20,
                              children: [{}].map((itemData) {
                                return SizedBox(
                                  width: 563.0,
                                  height: 158.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromPins(
                                        Pin(size: 124.6, end: 0.0),
                                        Pin(start: 0.0, end: 0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 23.6, end: 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  color:
                                                      const Color(0xffffffff),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                          0x29000000),
                                                      offset: Offset(0, 9),
                                                      blurRadius: 28,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 58.2, middle: 0.4384),
                                              Pin(size: 58.2, start: 0.0),
                                              child:
                                                  // Adobe XD layer: '44' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              9999.0, 9999.0)),
                                                  image: DecorationImage(
                                                    image: const AssetImage(''),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 85.0, start: 11.8),
                                              Pin(size: 15.0, middle: 0.4834),
                                              child: Text(
                                                'Dr. Jitendra Raut',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff313450),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(start: 11.8, end: 13.7),
                                              Pin(size: 25.0, middle: 0.684),
                                              child: Text(
                                                'B.Sc, MBBS, DDVL, MD- \nDermitologist',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                  color:
                                                      const Color(0xff898a8f),
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 33.4, start: 11.6),
                                              Pin(size: 15.0, end: 17.5),
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromPins(
                                                    Pin(size: 14.0, end: 0.0),
                                                    Pin(start: 0.0, end: 0.0),
                                                    child: Text(
                                                      '4.2',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color: const Color(
                                                            0xff898a8f),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(size: 14.1, start: 0.0),
                                                    Pin(start: 0.2, end: 1.4),
                                                    child:
                                                        // Adobe XD layer: 'star' (shape)
                                                        SvgPicture.string(
                                                      _svg_yjoaz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 124.6, start: 0.0),
                                        Pin(start: 0.0, end: 0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 23.6, end: 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  color:
                                                      const Color(0xffffffff),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                          0x29000000),
                                                      offset: Offset(0, 9),
                                                      blurRadius: 28,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 58.2, middle: 0.4384),
                                              Pin(size: 58.2, start: 0.0),
                                              child:
                                                  // Adobe XD layer: '44' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              9999.0, 9999.0)),
                                                  image: DecorationImage(
                                                    image: const AssetImage(''),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 79.0, start: 11.8),
                                              Pin(size: 15.0, middle: 0.4834),
                                              child: Text(
                                                'Dr. Alina James',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff313450),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(start: 11.8, end: 13.7),
                                              Pin(size: 25.0, middle: 0.684),
                                              child: Text(
                                                'B.Sc, MBBS, DDVL, MD- \nDermitologist',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                  color:
                                                      const Color(0xff898a8f),
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 33.4, start: 11.6),
                                              Pin(size: 15.0, end: 17.5),
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromPins(
                                                    Pin(size: 14.0, end: 0.0),
                                                    Pin(start: 0.0, end: 0.0),
                                                    child: Text(
                                                      '4.2',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color: const Color(
                                                            0xff898a8f),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(size: 14.1, start: 0.0),
                                                    Pin(start: 0.2, end: 1.4),
                                                    child:
                                                        // Adobe XD layer: 'star' (shape)
                                                        SvgPicture.string(
                                                      _svg_yjoaz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 124.6, middle: 0.3333),
                                        Pin(start: 0.0, end: 0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 23.6, end: 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  color:
                                                      const Color(0xffffffff),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                          0x29000000),
                                                      offset: Offset(0, 9),
                                                      blurRadius: 28,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 58.2, middle: 0.4384),
                                              Pin(size: 58.2, start: 0.0),
                                              child:
                                                  // Adobe XD layer: '44' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              9999.0, 9999.0)),
                                                  image: DecorationImage(
                                                    image: const AssetImage(''),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 81.0, start: 11.8),
                                              Pin(size: 15.0, middle: 0.4834),
                                              child: Text(
                                                'Dr. Steve Robert',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff313450),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 77.0, start: 11.8),
                                              Pin(size: 12.0, middle: 0.623),
                                              child: Text(
                                                'B.Sc, MBBS, DDVL, ',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                  color:
                                                      const Color(0xff898a8f),
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 33.4, start: 11.6),
                                              Pin(size: 15.0, end: 17.5),
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromPins(
                                                    Pin(size: 14.0, end: 0.0),
                                                    Pin(start: 0.0, end: 0.0),
                                                    child: Text(
                                                      '3.6',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color: const Color(
                                                            0xff898a8f),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(size: 14.1, start: 0.0),
                                                    Pin(start: 0.2, end: 1.4),
                                                    child:
                                                        // Adobe XD layer: 'star' (shape)
                                                        SvgPicture.string(
                                                      _svg_yjoaz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 124.6, middle: 0.6667),
                                        Pin(start: 0.0, end: 0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(start: 23.6, end: 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  color:
                                                      const Color(0xffffffff),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                          0x29000000),
                                                      offset: Offset(0, 9),
                                                      blurRadius: 28,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 58.2, middle: 0.4384),
                                              Pin(size: 58.2, start: 0.0),
                                              child:
                                                  // Adobe XD layer: '44' (shape)
                                                  Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              9999.0, 9999.0)),
                                                  image: DecorationImage(
                                                    image: const AssetImage(''),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 65.0, start: 11.8),
                                              Pin(size: 15.0, middle: 0.4834),
                                              child: Text(
                                                'Dr. Senila Fig',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xff313450),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(start: 11.8, end: 13.7),
                                              Pin(size: 25.0, middle: 0.684),
                                              child: Text(
                                                'B.Sc, MBBS, DDVL, MD- \nDermitologist',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 9,
                                                  color:
                                                      const Color(0xff898a8f),
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            Pinned.fromPins(
                                              Pin(size: 33.4, start: 11.6),
                                              Pin(size: 15.0, end: 17.5),
                                              child: Stack(
                                                children: <Widget>[
                                                  Pinned.fromPins(
                                                    Pin(size: 14.0, end: 0.0),
                                                    Pin(start: 0.0, end: 0.0),
                                                    child: Text(
                                                      '3.0',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        color: const Color(
                                                            0xff898a8f),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  Pinned.fromPins(
                                                    Pin(size: 14.1, start: 0.0),
                                                    Pin(start: 0.2, end: 1.4),
                                                    child:
                                                        // Adobe XD layer: 'star' (shape)
                                                        SvgPicture.string(
                                                      _svg_yjoaz,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 121.0, start: 17.0),
            Pin(size: 17.0, middle: 0.5887),
            child: Text(
              'Médicos Favoritos',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff3a7bfc),
                letterSpacing: 0.66,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 64.0, end: 18.0),
            Pin(size: 17.0, middle: 0.5887),
            child: Text(
              'Ver todos',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff3a7bfc),
                letterSpacing: 0.66,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 75.0, start: 33.0),
            Pin(size: 75.0, start: 106.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => BuscarMedicosPage(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 11),
                      blurRadius: 35,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 75.0, middle: 0.4983),
            Pin(size: 75.0, start: 106.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 11),
                    blurRadius: 35,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 75.0, end: 34.0),
            Pin(size: 75.0, start: 106.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => FichaMedicaPage(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 11),
                      blurRadius: 35,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 32.2, middle: 0.829),
            Pin(size: 39.8, middle: 0.1693),
            child:
                // Adobe XD layer: 'microscope' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 15.6, middle: 0.5589),
                  Pin(size: 9.9, start: 5.9),
                  child: Transform.rotate(
                    angle: 2.3562,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff40bdf3),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 22.3, end: 1.9),
                        Pin(size: 2.5, end: 0.0),
                        child: SvgPicture.string(
                          _svg_boauf,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 2.5),
                        child: SvgPicture.string(
                          _svg_ldcv9p,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 41.2, start: 50.0),
            Pin(size: 29.9, start: 127.9),
            child:
                // Adobe XD layer: 'nurse' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 15.3, middle: 0.5),
                  Pin(size: 15.3, middle: 0.5389),
                  child: SvgPicture.string(
                    _svg_wijwm7,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 1.0, end: 1.6),
                        Pin(size: 1.0, middle: 0.367),
                        child: SvgPicture.string(
                          _svg_ln6png,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_ycbh03,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.7, middle: 0.4986),
            Pin(size: 34.7, start: 125.2),
            child:
                // Adobe XD layer: 'pill' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 23.3, end: 1.1),
                  Pin(size: 23.3, start: 1.1),
                  child: SvgPicture.string(
                    _svg_x9m0r,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_cer9ds,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 3.8, start: 4.4),
                  Pin(size: 10.0, middle: 0.7544),
                  child: SvgPicture.string(
                    _svg_g6a5cl,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, start: 47.0),
            Pin(size: 20.0, middle: 0.2486),
            child: Text(
              'Medicos',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff333348),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, start: 37.0),
            Pin(size: 15.0, middle: 0.2647),
            child: Text(
              'Busca tu Médico',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xff898a8f),
                height: 1.1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 78.0, middle: 0.5051),
            Pin(size: 26.0, middle: 0.2672),
            child: Text(
              'Horarios de tus medicinas',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xff898a8f),
                height: 1.1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 84.0, end: 25.0),
            Pin(size: 26.0, middle: 0.2672),
            child: Text(
              'Ingresa a tu cita médica virtual',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                color: const Color(0xff898a8f),
                height: 1.1,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, middle: 0.4735),
            Pin(size: 17.0, middle: 0.2403),
            child: Text(
              'Tus Recetas',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff333348),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 73.0, end: 34.0),
            Pin(size: 17.0, middle: 0.2403),
            child: Text(
              'Cita Médica',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff333348),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 152.0, middle: 0.4061),
            child:
                // Adobe XD layer: 'Grupo de publicidad' (group)
                Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: 688.0,
                  height: 152.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 35.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.9),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: -15.8),
                                          Pin(start: -15.0, end: -72.8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: const AssetImage(''),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: 0.0),
                                          Pin(start: 0.0, end: 0.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xffcccccc)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 340.0, end: -313.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.9),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: -15.8),
                                          Pin(start: -15.0, end: -72.8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: const AssetImage(''),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(start: 0.0, end: 0.0),
                                          Pin(start: 0.0, end: 0.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xffcccccc)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 108.0, start: 20.0),
            Pin(size: 24.0, start: 58.0),
            child: Text(
              'Good Doctor',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 87.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                      color: const Color(0xff1ca1f3),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x12000000),
                          offset: Offset(0, -4),
                          blurRadius: 63,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 261.0, start: 55.0),
                  Pin(size: 39.4, middle: 0.3703),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 30.0, start: 0.0),
                        Pin(size: 15.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: const Color(0xff333348),
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 37.0, end: 0.0),
                        Pin(size: 15.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Text(
                                'Cuenta',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: const Color(0xffeff0f5),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 25.0, middle: 0.5),
                        Pin(size: 15.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Text(
                                'Chat',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  color: const Color(0xffeeeff2),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 17.3, middle: 0.4912),
                        Pin(size: 17.6, start: 0.1),
                        child:
                            // Adobe XD layer: 'tick' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 14.0, start: 0.4),
                              Pin(start: 0.4, end: 1.8),
                              child: SvgPicture.string(
                                _svg_v5j9d6,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_o9q7h3,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(235.6, 0.1),
                        child: SizedBox(
                          width: 14.0,
                          height: 18.0,
                          child:
                              // Adobe XD layer: 'user-4' (group)
                              Stack(
                            children: <Widget>[
                              Transform.translate(
                                offset: Offset(0.5, 0.4),
                                child: SizedBox(
                                  width: 10.0,
                                  height: 17.0,
                                  child: Stack(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10.0,
                                        height: 17.0,
                                        child: SvgPicture.string(
                                          _svg_h88upc,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 14.0,
                                height: 18.0,
                                child: SvgPicture.string(
                                  _svg_hx4u4y,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.1, start: 5.9),
                        Pin(size: 17.9, start: 0.0),
                        child:
                            // Adobe XD layer: 'monitor' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.4, end: 0.4),
                              Pin(size: 13.5, start: 0.4),
                              child: SvgPicture.string(
                                _svg_sv2b6,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_sipenf,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 24.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 118.0, middle: 0.4864),
                        Pin(size: 4.0, middle: 0.5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xff4a4b4d),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_yjoaz =
    '<svg viewBox="0.0 0.2 14.1 13.4" ><path transform="translate(0.0, -1.1)" d="M 7.056396484375 1.317999958992004 L 9.236664772033691 5.736172676086426 L 14.1125316619873 6.444850921630859 L 10.5843334197998 9.883712768554688 L 11.41719436645508 14.73992919921875 L 7.056396484375 12.44726943969727 L 2.695336818695068 14.73992919921875 L 3.5281982421875 9.883712768554688 L 0 6.444850921630859 L 4.875866889953613 5.736172676086426 L 7.056396484375 1.317999958992004 Z" fill="#efce4a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_boauf =
    '<svg viewBox="8.0 37.4 22.3 2.5" ><path transform="translate(-143.58, -442.75)" d="M 172.6646270751953 480.1160278320313 L 152.8202514648438 480.1160278320313 C 152.1356201171875 480.1160278320313 151.5800170898438 480.671630859375 151.5800170898438 481.3562622070313 C 151.5800170898438 482.0408935546875 152.1356201171875 482.5964965820313 152.8202514648438 482.5964965820313 L 172.6646270751953 482.5964965820313 C 173.3492736816406 482.5964965820313 173.9048767089844 482.0408935546875 173.9048767089844 481.3562622070313 C 173.9048767089844 480.6703796386719 173.3505249023438 480.1160278320313 172.6646270751953 480.1160278320313 Z" fill="#4d4d4d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ldcv9p =
    '<svg viewBox="0.0 0.0 32.2 37.4" ><path transform="translate(-48.82, 0.0)" d="M 67.42711639404297 37.36457443237305 C 74.96179962158203 37.36333465576172 81.06890869140625 31.25748252868652 81.07014465332031 23.72156143188477 C 81.06890869140625 18.52356338500977 78.16166687011719 14.01021003723145 73.88521575927734 11.70699596405029 L 75.82249450683594 9.769722938537598 C 76.05316925048828 9.539042472839355 76.18586730957031 9.219017028808594 76.18586730957031 8.892844200134277 C 76.18586730957031 8.566671371459961 76.05316925048828 8.246646881103516 75.82249450683594 8.015966415405273 L 74.94561004638672 7.139088153839111 L 76.45997619628906 5.624728202819824 C 76.69065093994141 5.394048690795898 76.82334899902344 5.074023723602295 76.82334899902344 4.747849941253662 C 76.82334899902344 4.421675682067871 76.69065856933594 4.101651191711426 76.45997619628906 3.8709716796875 L 72.95253753662109 0.3634554147720337 C 72.46759796142578 -0.1214854866266251 71.68247222900391 -0.1214854866266251 71.19878387451172 0.3634554147720337 L 69.68442535400391 1.877815961837769 L 68.80753326416016 1.000937581062317 C 68.32260131835938 0.5159965753555298 67.5374755859375 0.5159965753555298 67.05377960205078 1.000937581062317 L 56.03143310546875 12.01954746246338 C 55.54649353027344 12.50448799133301 55.54649353027344 13.28960800170898 56.03143310546875 13.77330303192139 L 56.90830993652344 14.65018177032471 L 54.02964019775391 17.52885246276855 C 53.54470062255859 18.01379585266113 53.54470062255859 18.79891395568848 54.02964019775391 19.2826099395752 L 57.53715515136719 22.79012298583984 C 57.76783752441406 23.02080154418945 58.08786010742188 23.15349578857422 58.41403198242188 23.15349578857422 C 58.74020385742188 23.15349578857422 59.06023406982422 23.02080154418945 59.29090881347656 22.79012298583984 L 62.16958618164063 19.91144943237305 L 63.04646301269531 20.788330078125 C 63.27713775634766 21.01900863647461 63.59716796875 21.15170669555664 63.92333984375 21.15170669555664 C 64.24951171875 21.15170669555664 64.56952667236328 21.01901245117188 64.80020904541016 20.788330078125 L 72.03471374511719 13.55382823944092 C 75.89813995361328 15.30883121490479 78.58955383300781 19.19956588745117 78.58706665039063 23.72031021118164 C 78.5858154296875 26.80607795715332 77.33934020996094 29.58925628662109 75.31770324707031 31.61338233947754 C 73.2935791015625 33.6350212097168 70.51039123535156 34.88149642944336 67.42462921142578 34.88274383544922 C 62.56649780273438 34.88523483276367 58.44010162353516 31.77215003967285 56.90714263916016 27.44107055664063 L 59.98551940917969 27.44107055664063 C 60.67015838623047 27.44107055664063 61.22576904296875 26.88546371459961 61.22576904296875 26.20081520080566 C 61.22576904296875 25.51617240905762 60.67015838623047 24.9605655670166 59.98551940917969 24.9605655670166 L 50.06325531005859 24.9605655670166 C 49.37860870361328 24.9605655670166 48.822998046875 25.51617240905762 48.822998046875 26.20081520080566 C 48.822998046875 26.88546371459961 49.37860870361328 27.44107055664063 50.06325531005859 27.44107055664063 L 54.30374908447266 27.44107055664063 C 55.9248046875 33.17117309570313 61.18226623535156 37.36333465576172 67.42711639404297 37.36457443237305 Z M 63.92458343505859 18.1589412689209 L 63.04770660400391 17.28206253051758 C 62.56276702880859 16.79712104797363 61.77764129638672 16.79712104797363 61.2939453125 17.28206253051758 L 58.41527557373047 20.16073417663574 L 56.66152191162109 18.40697860717773 L 59.54019165039063 15.52830505371094 C 59.7708740234375 15.29762649536133 59.90357208251953 14.97760105133057 59.90357208251953 14.65142631530762 C 59.90357208251953 14.3252534866333 59.7708740234375 14.00522804260254 59.54019165039063 13.77455043792725 L 58.66331481933594 12.89767074584961 L 67.92942047119141 3.63157320022583 L 68.80628967285156 4.508451461791992 C 69.03697204589844 4.739131450653076 69.35700225830078 4.871826648712158 69.68316650390625 4.871826648712158 C 70.00934600830078 4.871826648712158 70.32937622070313 4.73913049697876 70.56005096435547 4.508451461791992 L 72.07440948486328 2.994090557098389 L 73.82816314697266 4.747848033905029 L 72.31381225585938 6.262207984924316 C 71.83011627197266 6.747148990631104 71.83011627197266 7.53226900100708 72.31381225585938 8.015964508056641 L 73.19068908691406 8.892841339111328 L 63.92458343505859 18.1589412689209 Z" fill="#4d4d4d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ln6png =
    '<svg viewBox="38.6 10.6 1.0 1.0" ><path transform="translate(-441.64, -191.31)" d="M 480.2649841308594 201.9250030517578 L 480.2662963867188 201.9263000488281 L 480.2726135253906 201.9275665283203 Z" fill="#4d4d4d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ycbh03 =
    '<svg viewBox="0.0 0.0 41.2 29.9" ><path transform="translate(0.0, -69.93)" d="M 38.62323379516602 80.54788970947266 C 36.8802490234375 79.95415496826172 35.11049270629883 79.45983123779297 33.32553100585938 79.04567718505859 L 33.32553100585938 74.54555511474609 C 33.32424545288086 72.71846008300781 32.041259765625 71.10166931152344 30.19381332397461 70.77162933349609 C 27.0493106842041 70.22245025634766 23.84110832214355 69.93198394775391 20.58449935913086 69.93198394775391 C 17.32403182983398 69.93198394775391 14.11712265014648 70.2352294921875 10.97012424468994 70.790771484375 C 9.126460075378418 71.123291015625 7.846045017242432 72.73760223388672 7.844758033752441 74.56341552734375 L 7.844758033752441 79.04061126708984 C 6.053366661071777 79.45724487304688 4.279827117919922 79.95415496826172 2.539340019226074 80.55046081542969 L 2.529127359390259 80.5543212890625 C 0.9403077363967896 81.11869049072266 -0.001306847087107599 82.61326599121094 -2.015854624914937e-05 84.16001129150391 C -2.015854624914937e-05 84.65435028076172 0.09680314362049103 85.27992248535156 0.3006628751754761 85.76154327392578 L 5.321884155273438 97.65657043457031 L 5.32317066192627 97.65657043457031 C 5.936036586761475 98.93070983886719 7.389752864837646 99.86717224121094 8.851190567016602 99.85696411132813 C 9.241057395935059 99.85696411132813 9.634782791137695 99.73972320556641 10.01829624176025 99.62503814697266 L 10.03992938995361 99.58812713623047 C 13.37430000305176 98.52427673339844 16.98000335693359 97.97381591796875 20.58442115783691 97.97381591796875 C 24.1914119720459 97.97381591796875 27.79582977294922 98.50257110595703 31.12891387939453 99.56521606445313 L 31.14934158325195 99.56778717041016 C 31.53413772583008 99.68374633789063 31.92778587341309 99.73851776123047 32.31773376464844 99.73722839355469 C 33.78037261962891 99.7474365234375 35.23288726806641 98.90264129638672 35.84703826904297 97.41579437255859 L 35.84832382202148 97.41579437255859 L 40.86826324462891 85.64308929443359 L 40.8708381652832 85.63802337646484 C 41.07598114013672 85.15133666992188 41.17280960083008 84.64164733886719 41.17280960083008 84.14353179931641 C 41.17400741577148 82.57376861572266 40.21076583862305 81.08427429199219 38.62323379516602 80.54788970947266 Z M 38.52262878417969 84.65057373046875 L 33.50518798828125 96.418212890625 L 33.49755096435547 96.43605804443359 C 33.29875564575195 96.91383361816406 32.86682891845703 97.17888641357422 32.31901931762695 97.18910217285156 L 31.88331604003906 97.12412261962891 L 31.88331604003906 97.12541198730469 C 28.28653907775879 95.98123168945313 24.43620109558105 95.41298675537109 20.58578681945801 95.41170501708984 C 16.73674011230469 95.41170501708984 12.88632488250732 95.97994232177734 9.288261413574219 97.12541198730469 L 9.288261413574219 97.12412261962891 L 8.85127067565918 97.18910217285156 C 8.302094459533691 97.17888641357422 7.871458053588867 96.91390228271484 7.672743797302246 96.43605804443359 L 7.665103435516357 96.41692352294922 L 2.645009279251099 84.64414215087891 L 2.5481858253479 84.15994262695313 C 2.549472808837891 83.62990570068359 2.874361515045166 83.12922668457031 3.372550964355469 82.95849609375 C 6.918423175811768 81.74554443359375 10.60052394866943 80.92247772216797 14.33875560760498 80.48548126220703 C 15.03823184967041 80.40394592285156 15.5377082824707 79.77072906494141 15.45616436004639 79.07254028320313 C 15.37461853027344 78.37306213378906 14.7414083480835 77.87358856201172 14.04321956634521 77.95512390136719 L 14.04321956634521 77.95512390136719 C 12.82006072998047 78.09778594970703 11.6045446395874 78.29529571533203 10.39288520812988 78.51828765869141 L 10.39288520812988 74.56471252441406 C 10.39031314849854 73.93784332275391 10.84395027160645 73.39381408691406 11.41347122192383 73.30077362060547 C 14.42544651031494 72.76944732666016 17.48334121704102 72.48027038574219 20.58578872680664 72.48027038574219 C 23.69209289550781 72.48027038574219 26.7512035369873 72.75675201416016 29.75682258605957 73.28170776367188 C 30.32634544372559 73.37347412109375 30.77990341186523 73.91878509521484 30.77869606018066 74.54564666748047 L 30.77869606018066 78.52085876464844 C 29.57724952697754 78.29915618896484 28.37065696716309 78.10422515869141 27.16020584106445 77.96156311035156 C 26.46073150634766 77.87873077392578 25.82751655578613 78.37949371337891 25.74597358703613 79.07768249511719 C 25.66314506530762 79.77715301513672 26.16262054443359 80.41037750244141 26.86209869384766 80.49191284179688 C 30.56977081298828 80.92890930175781 34.24431228637695 81.74820709228516 37.80795288085938 82.96243286132813 L 37.81559753417969 82.96500396728516 C 38.28700637817383 83.11539459228516 38.62467956542969 83.60457611083984 38.62467956542969 84.14482879638672 L 38.52262878417969 84.65057373046875 Z" fill="#4d4d4d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wijwm7 =
    '<svg viewBox="12.9 7.9 15.3 15.3" ><path transform="translate(-147.98, -184.99)" d="M 176.2122497558594 197.9754028320313 L 171.1158294677734 197.9754028320313 L 171.1158294677734 192.8789978027344 L 166.0194091796875 192.8789978027344 L 166.0194091796875 197.9754028320313 L 160.9230041503906 197.9754028320313 L 160.9230041503906 203.0718078613281 L 166.0194091796875 203.0718078613281 L 166.0194091796875 208.1682434082031 L 171.1158294677734 208.1682434082031 L 171.1158294677734 203.0718078613281 L 176.2122497558594 203.0718078613281 L 176.2122497558594 197.9754028320313 Z" fill="#3fbbf1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9m0r =
    '<svg viewBox="10.3 1.1 23.3 23.3" ><path transform="translate(-138.33, -14.9)" d="M 168.9913482666016 18.91951179504395 C 165.1039886474609 15.03215980529785 158.7783203125 15.03215980529785 154.8909606933594 18.91951179504395 L 148.6239929199219 25.18647193908691 L 162.724365234375 39.28685760498047 L 168.9913482666016 33.0198974609375 C 172.8786926269531 29.13254165649414 172.8786926269531 22.80797576904297 168.9913482666016 18.91951179504395 Z" fill="#40bdf3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cer9ds =
    '<svg viewBox="0.0 0.0 34.7 34.7" ><path transform="translate(0.0, 0.0)" d="M 31.4411449432373 3.240369319915771 C 29.28310394287109 1.081221580505371 26.4393138885498 -0.0011222556931898 23.60771942138672 -1.443178825866198e-05 C 20.77501487731934 -0.0011222556931898 17.93233871459961 1.081221580505371 15.77429389953613 3.240369319915771 L 3.240370512008667 15.77429008483887 C 1.081222057342529 17.93233108520508 -0.001122256042435765 20.7750072479248 -1.443178734916728e-05 23.60770988464355 C -0.001122256042435765 26.43930435180664 1.081222057342529 29.28309059143066 3.240370512008667 31.44113349914551 L 3.240370512008667 31.44113349914551 C 5.398413181304932 33.60028076171875 8.241089820861816 34.68262100219727 11.07379722595215 34.68151473999023 C 13.9053955078125 34.68262100219727 16.74917984008789 33.60028076171875 18.90722274780273 31.44113349914551 L 31.4411449432373 18.9072151184082 C 33.60029220581055 16.74917602539063 34.68263626098633 13.9064998626709 34.6815299987793 11.07379341125488 C 34.68263626098633 8.241086959838867 33.60029220581055 5.398411273956299 31.4411449432373 3.240369319915771 Z M 29.87467765808105 17.34075355529785 L 17.34075927734375 29.87466621398926 C 15.61144542694092 31.60398292541504 13.34815883636475 32.46475982666016 11.07379722595215 32.46586990356445 C 8.799433708190918 32.46475982666016 6.536148548126221 31.60398292541504 4.806833744049072 29.87466621398926 L 4.023602962493896 30.65789985656738 L 4.806833744049072 29.87466621398926 C 3.077521085739136 28.14535713195801 2.216741561889648 25.8820743560791 2.215633869171143 23.60770988464355 C 2.216741561889648 21.33334732055664 3.078628778457642 19.07006454467773 4.806833744049072 17.34075355529785 L 17.34075927734375 4.806832313537598 C 19.0700740814209 3.07751989364624 21.33335494995117 2.216740608215332 23.60771942138672 2.215633153915405 C 25.88208198547363 2.216740608215332 28.14536666870117 3.078627824783325 29.87467765808105 4.806832313537598 C 31.60399436950684 6.53614616394043 32.46477127075195 8.799429893493652 32.46588134765625 11.07379341125488 C 32.46477127075195 13.34815406799316 31.60288429260254 15.61143970489502 29.87467765808105 17.34075355529785 Z" fill="#4d4d4d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g6a5cl =
    '<svg viewBox="4.4 18.6 3.8 10.0" ><path transform="translate(-59.55, -249.8)" d="M 67.49462127685547 276.538330078125 C 66.62940979003906 275.6731262207031 66.20068359375 274.5442504882813 66.19957733154297 273.4053955078125 C 66.20068359375 272.2654418945313 66.62940979003906 271.1365661621094 67.49462127685547 270.2713623046875 C 67.92778778076172 269.8381958007813 67.92778778076172 269.1369323730469 67.49462127685547 268.7048950195313 C 67.06147003173828 268.271728515625 66.36020660400391 268.271728515625 65.92816162109375 268.7048950195313 C 64.63200378417969 269.9999389648438 63.98281860351563 271.7082214355469 63.98392868041992 273.4053955078125 C 63.98170852661133 275.1036987304688 64.63311004638672 276.8119506835938 65.92705535888672 278.1047973632813 C 66.36020660400391 278.5379638671875 67.06147003173828 278.5379638671875 67.49351501464844 278.1047973632813 C 67.92667388916016 277.6727294921875 67.92667388916016 276.9714965820313 67.49462127685547 276.538330078125 L 67.49462127685547 276.538330078125 Z" fill="#3fbbf1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v5j9d6 =
    '<svg viewBox="0.8 0.4 14.0 15.4" ><path transform="translate(-9.59, -9.62)" d="M 12.04807090759277 19.49973487854004 C 12.04726696014404 16.56732940673828 13.60673522949219 13.85603332519531 16.14163208007813 12.38211345672607 C 18.67652893066406 10.90819358825684 21.8043098449707 10.89404392242432 24.35239028930664 12.34512901306152 C 22.05966377258301 10.12974739074707 18.69357490539551 9.437490463256836 15.71261024475098 10.56857776641846 C 12.7318058013916 11.69966602325439 10.67208099365234 14.45052051544189 10.42605209350586 17.62927436828613 C 10.18002414703369 20.80802536010742 11.79191207885742 23.8430233001709 14.56319141387939 25.41937637329102 C 12.95274925231934 23.87164688110352 12.04421329498291 21.7332878112793 12.04807090759277 19.49973487854004 Z M 12.04807090759277 19.49973487854004" fill="#d4e1f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o9q7h3 =
    '<svg viewBox="0.4 0.0 17.3 17.6" ><path  d="M 9.047110557556152 0 C 4.280107498168945 0 0.40234375 3.877763032913208 0.40234375 8.644766807556152 C 0.40234375 13.41176986694336 4.280107498168945 17.2895336151123 9.047110557556152 17.2895336151123 C 10.03331470489502 17.28937149047852 11.01228332519531 17.11956405639648 11.94108295440674 16.78734588623047 L 16.61337280273438 17.60647392272949 C 16.63652801513672 17.6098518371582 16.65984535217285 17.61113929748535 16.68332099914551 17.61065483093262 C 16.82096862792969 17.60969161987305 16.94912719726563 17.54038619995117 17.02518844604492 17.42557334899902 C 17.10124778747559 17.31060028076172 17.11507797241211 17.16555404663086 17.06201171875 17.03835868835449 L 15.79006004333496 14.045654296875 C 17.02422332763672 12.51658058166504 17.69573783874512 10.60977935791016 17.6918773651123 8.644766807556152 C 17.6918773651123 3.877763032913208 13.81411361694336 0 9.047110557556152 0 Z M 16.33341407775879 11.49339008331299 C 16.01518630981445 12.30078315734863 15.56445407867432 13.04932022094727 14.99955463409424 13.7081298828125 C 14.89712238311768 13.82632160186768 14.87155437469482 13.99275016784668 14.9337854385376 14.13618755340576 L 16.00811004638672 16.66384887695313 L 11.97388553619385 15.95985507965088 C 11.9507303237915 15.95647716522217 11.92741394042969 15.95502853393555 11.90393543243408 15.95583248138428 C 11.85489082336426 15.95567321777344 11.80616760253906 15.964035987854 11.75985622406006 15.98043727874756 C 10.89200210571289 16.30381011962891 9.973335266113281 16.46975898742676 9.047110557556152 16.47040367126465 C 4.732928276062012 16.47040367126465 1.22565484046936 12.96296882629395 1.22565484046936 8.648947715759277 C 1.22565484046936 4.334764957427979 4.732928276062012 0.8274919390678406 9.047110557556152 0.8274919390678406 C 13.36129283905029 0.8274919390678406 16.86856842041016 4.334764957427979 16.86856842041016 8.648947715759277 C 16.87146186828613 9.622287750244141 16.68991470336914 10.5875883102417 16.33341407775879 11.49339008331299 Z M 16.33341407775879 11.49339008331299" fill="#eeeef3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h88upc =
    '<svg viewBox="0.0 0.0 10.3 17.0" ><path transform="translate(-71.6, -10.21)" d="M 76.41535186767578 15.11485481262207 C 76.41535186767578 12.87245845794678 78.23294067382813 11.05464458465576 80.47527313232422 11.05464458465576 C 80.60684204101563 11.05464458465576 80.73410797119141 11.06326293945313 80.86138916015625 11.07171249389648 C 79.50000762939453 10.0037956237793 77.61183166503906 9.915796279907227 76.15699768066406 10.85229587554932 C 74.70232391357422 11.78863048553467 74.00051116943359 13.54396724700928 74.40883636474609 15.2252254486084 C 74.81717681884766 16.90648651123047 76.24581909179688 18.14443397521973 77.96795654296875 18.30932998657227 C 76.98757171630859 17.53938102722168 76.41518402099609 16.36158752441406 76.41535186767578 15.11485481262207 Z M 76.41535186767578 15.11485481262207" fill="#d4e1f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-10.7, -235.43)" d="M 19.57382583618164 246.2608489990234 C 20.05291557312012 246.2603302001953 20.53067588806152 246.3100738525391 20.99932479858398 246.4093475341797 C 19.93359756469727 245.7517547607422 18.7049674987793 245.4063568115234 17.45264053344727 245.4123382568359 C 13.71521377563477 245.4207916259766 10.69037342071533 248.4033050537109 10.69882583618164 252.4633331298828 L 12.86243152618408 252.4590606689453 C 13.2485523223877 248.8401641845703 16.10369873046875 246.2693023681641 19.57382583618164 246.2608489990234 Z M 19.57382583618164 246.2608489990234" fill="#d4e1f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hx4u4y =
    '<svg viewBox="0.0 0.2 13.8 17.6" ><path transform="translate(-61.57, 0.0)" d="M 68.78491973876953 9.179694175720215 C 71.26141357421875 9.179694175720215 73.26908111572266 7.171961307525635 73.26908111572266 4.695398330688477 C 73.26908111572266 2.218669891357422 71.26141357421875 0.2109369039535522 68.78491973876953 0.2109369039535522 C 66.30844879150391 0.2109369039535522 64.30078125 2.218669891357422 64.30078125 4.695398330688477 C 64.30309295654297 7.170967102050781 66.30928039550781 9.177372932434082 68.78491973876953 9.179694175720215 Z M 68.78491973876953 1.059437990188599 C 70.79293060302734 1.059437990188599 72.42060089111328 2.687334060668945 72.42060089111328 4.695398330688477 C 72.42060089111328 6.703296184539795 70.79293060302734 8.331193923950195 68.78491973876953 8.331193923950195 C 66.77693176269531 8.331193923950195 65.14925384521484 6.703296184539795 65.14925384521484 4.695398330688477 C 65.15156555175781 2.688328266143799 66.77791595458984 1.061758041381836 68.78491973876953 1.059437990188599 Z M 68.78491973876953 1.059437990188599" fill="#e0e1ec" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, -225.13)" d="M 13.06413173675537 242.1212005615234 L 0.8612337112426758 242.1048126220703 C 1.081803560256958 238.7913665771484 3.843650817871094 236.1652984619141 7.212023735046387 236.1652984619141 C 9.695796966552734 236.1699371337891 11.95137882232666 237.6147308349609 12.99440288543701 239.8688812255859 C 13.09283924102783 240.0821685791016 13.34539318084717 240.1753082275391 13.55867195129395 240.0768890380859 C 13.77178382873535 239.9784393310547 13.86491870880127 239.7258758544922 13.76648139953613 239.5125885009766 C 12.58988666534424 236.9521636962891 10.02971935272217 235.3116607666016 7.212023735046387 235.3124847412109 C 3.236959457397461 235.3124847412109 0 238.5495758056641 0 242.5247650146484 C 0.0006628698902204633 242.7587432861328 0.1902436763048172 242.9483795166016 0.4242367446422577 242.9490203857422 L 13.06413173675537 242.9389495849609 C 13.12649631500244 242.9477691650391 13.55429077148438 242.9464874267578 13.55867195129395 242.5658111572266 C 13.56305313110352 242.1851654052734 13.06413173675537 242.1212005615234 13.06413173675537 242.1212005615234 Z" fill="#eaebf5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sv2b6 =
    '<svg viewBox="0.4 0.7 17.2 13.5" ><path transform="translate(-9.58, -9.58)" d="M 13.33384037017822 11.96769905090332 L 27.24010276794434 11.96769905090332 C 27.24042701721191 11.0469856262207 26.49389457702637 10.30045223236084 25.57317924499512 10.30077743530273 L 11.66691780090332 10.30077743530273 C 10.7462043762207 10.30045223236084 9.999670028686523 11.0469856262207 9.999996185302734 11.96769905090332 L 9.999996185302734 22.14422416687012 C 9.999670028686523 23.06493759155273 10.7462043762207 23.81147193908691 11.66691780090332 23.8111457824707 L 11.66691780090332 13.63462162017822 C 11.66659164428711 12.71390724182129 12.41312599182129 11.96737384796143 13.33384037017822 11.96769905090332 Z M 13.33384037017822 11.96769905090332" fill="#d4e1f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sipenf =
    '<svg viewBox="0.0 0.3 18.1 17.9" ><path  d="M 15.9858455657959 0.3007810115814209 L 2.083652257919312 0.3007810115814209 C 0.9330855011940002 0.3011066019535065 0.0004883559886366129 1.233866691589355 0 2.384433507919312 L 0 12.56095886230469 C 0.0004883580841124058 13.71152591705322 0.9330855011940002 14.64412403106689 2.083652257919312 14.64461040496826 L 8.618019104003906 14.64461040496826 L 8.618019104003906 17.3867301940918 L 5.592490196228027 17.3867301940918 C 5.362311840057373 17.3867301940918 5.175759792327881 17.57328224182129 5.175759792327881 17.8034610748291 C 5.175759792327881 18.03363990783691 5.362311840057373 18.22019195556641 5.592490196228027 18.22019195556641 L 12.67690849304199 18.22019195556641 C 12.9070873260498 18.22019195556641 13.09363842010498 18.03363990783691 13.09363842010498 17.8034610748291 C 13.09363842010498 17.57328224182129 12.9070873260498 17.3867301940918 12.67690849304199 17.3867301940918 L 9.451479911804199 17.3867301940918 L 9.451479911804199 14.64461040496826 L 15.9858455657959 14.64461040496826 C 17.13641166687012 14.64412403106689 18.06900978088379 13.71152591705322 18.06949806213379 12.56095886230469 L 18.06949806213379 2.384433507919312 C 18.06900978088379 1.233866691589355 17.13641166687012 0.3011066019535065 15.9858455657959 0.3007810115814209 Z M 17.23603820800781 12.56095886230469 C 17.23392105102539 13.25051689147949 16.6754035949707 13.80919742584229 15.9858455657959 13.81115055084229 L 2.083652257919312 13.81115055084229 C 1.394093632698059 13.80919742584229 0.8354143500328064 13.25051689147949 0.8334609270095825 12.56095886230469 L 0.8334609270095825 2.384433507919312 C 0.8354143500328064 1.694711923599243 1.394093632698059 1.136195421218872 2.083652257919312 1.134241938591003 L 15.989914894104 1.134241938591003 C 16.67963600158691 1.136195421218872 17.2381534576416 1.694711923599243 17.2401065826416 2.384433507919312 L 17.2401065826416 12.56095886230469 Z M 17.23603820800781 12.56095886230469" fill="#1a1a1d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
