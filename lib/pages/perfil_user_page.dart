import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goldenhands/models/persona.dart';
import 'package:goldenhands/models/usuario.dart';
import 'package:goldenhands/pages/tapbar_page.dart';
import 'package:goldenhands/services/auth_service.dart';
import 'package:goldenhands/widgets/SliverAppBar/custom_sliverappbar.dart';
import 'package:goldenhands/widgets/card/custom_card.dart';
import 'package:goldenhands/widgets/custom_chip.dart';
import 'package:goldenhands/widgets/custom_listtitle.dart';
import 'package:goldenhands/widgets/perfil/description_multiline_widget.dart';
import 'package:goldenhands/widgets/perfil/dividersection_widget.dart';
import 'package:goldenhands/widgets/perfil/chipsection_widget.dart';
import 'package:provider/provider.dart';

class PerfilUserPage extends StatefulWidget {
  PerfilUserPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilUserPage> {
  final _scrollCustomController = new ScrollController();

  final _scrollPageController = new ScrollController();

  bool _available = true;

  ScrollPhysics _scrollCustomPhysics = AlwaysScrollableScrollPhysics();

  ScrollPhysics _scrollPagePhysics = NeverScrollableScrollPhysics();

  @override
  void initState() {
// testear para la pagina sobre convertir a simnglescrollpage

    // TODO: implement initState
    _scrollCustomController.addListener(() {
      if (_scrollCustomController.position.pixels ==
              _scrollCustomController.position.maxScrollExtent &&
          _available) {
        // _scrollPagePhysics = _scrollCustomPhysics;
        // _scrollCustomPhysics = NeverScrollableScrollPhysics();
        print("_scrollPageController.position.pixels");
        print(_scrollPageController.position.pixels);
        if (_scrollPageController.position.maxScrollExtent != 0.0) {
          _scrollPagePhysics = AlwaysScrollableScrollPhysics();
          _available = false;
          setState(() {});
        }
      }
    });
    _scrollPageController.addListener(() {
      print(_scrollPageController.position.pixels);

      if (_scrollPageController.position.pixels == 0.0 && !_available) {
        _scrollCustomPhysics = AlwaysScrollableScrollPhysics();
        _scrollPagePhysics = NeverScrollableScrollPhysics();
        _available = true;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    Usuario usuario = authService.usuario;
    Persona persona = authService.persona;
    _systemChromeColor(Brightness.light, context);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Color(0xFF2E7D32),
    // ));
    final expandedHeight = MediaQuery.of(context).size.height * .3;

    return CustomScrollView(
      controller: _scrollCustomController,
      physics: _scrollCustomPhysics,
      slivers: <Widget>[
        SliverPersistentHeader(
          delegate: CustomSliverAppBar(
              expandedHeight: expandedHeight,
              title: '',
              subtitle: persona.nombre,
              fotoUrl: usuario.img,
              cards: [
                CustomCard(
                  height: expandedHeight / 3,
                  icon: Icon(Icons.work_outline, size: 14),
                  icontext: '75',
                  text: 'Trabajos',
                ),
                CustomCard(
                  height: expandedHeight / 3,
                  icon: Icon(Icons.star_rate, size: 14, color: Colors.yellow),
                  icontext: '3.5',
                  text: 'Reputacion',
                ),
              ]),
          pinned: true,
          // floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            // SizedBox(height: MediaQuery.of(context).padding.top), //pinned
            SizedBox(height: expandedHeight * 0.25), //pinned
            SizedBox(
                height: MediaQuery.of(context).size.height -
                    kBottomNavigationBarHeight * 2,
                child: TapBarPage(tabs: [
                  Tab(text: ' Sobre '),
                  Tab(text: 'Historial')
                ], pages: [
                  SingleChildScrollView(
                    key: UniqueKey(),
                    controller: _scrollPageController,
                    physics: _scrollPagePhysics,
                    child: Column(
                      children: [
                        DividerSectionWidget(
                          title: "Informacion de usuario",
                          children: contentDividerSection([
                            '${persona.nombre} ${persona.apellido}',
                            persona.celular,
                            persona.direccion,
                            usuario.email
                          ]),
                        ),
                        ChipSectionWidget(
                          title: 'Serivicios',
                          children: [
                            CustomChip(label: "Plomero"),
                            CustomChip(label: "Plomero"),
                            CustomChip(label: "Plomero"),
                            CustomChip(label: "Plomero"),
                            CustomChip(label: "Plomero"),
                          ],
                        ),
                        DescriptionMultilineWidget(
                          title: null,
                          description: null,
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    key: UniqueKey(),
                    controller: _scrollPageController,
                    physics: _scrollPagePhysics,
                    child: Column(
                      children: [
                        // FlatButton(
                        //     onPressed: () {
                        //       _scrollOn();
                        //       print('_scroll on btn');
                        //     },
                        //     child: Text('sd')),
                        CustomListile(),
                        DividerSectionWidget(
                          title: "Informacion de usuario",
                          children: contentDividerSection([
                            usuario.nombre,
                            usuario.nombre,
                            usuario.email,
                            usuario.email
                          ]),
                        ),
                      ],
                    ),
                  ),
                ])),
          ]),
        )
      ],
    );
  }

  void _systemChromeColor(Brightness brightness, BuildContext context) {
    final color = Theme.of(context).primaryColor;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: brightness,
          systemNavigationBarColor: Colors.white,
          statusBarColor: color.withOpacity(0)),
    );
  }
}

Widget contentDividerSection(List<String> list) {
  return Column(children: [
    ListTile(
        leading: Icon(Icons.person, color: Colors.black),
        title: Text('Nombre Apellidos', style: TextStyle(fontSize: 14)),
        subtitle: Text(list[0])),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.phone, color: Colors.black),
        title: Text('Celular', style: TextStyle(fontSize: 14)),
        subtitle: Text(list[1])),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.location_on, color: Colors.black),
        title: Text('Direccion', style: TextStyle(fontSize: 14)),
        subtitle: Text(list[2])),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.email, color: Colors.black),
        title: Text('Email', style: TextStyle(fontSize: 14)),
        subtitle: Text(list[3])),
  ]);
}
