import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_movil_telemedicina/pages/tapbar_page.dart';
import 'package:app_movil_telemedicina/widgets/SliverAppBar/custom_sliverappbar.dart';
import 'package:app_movil_telemedicina/widgets/card/custom_card.dart';
import 'package:app_movil_telemedicina/widgets/custom_chip.dart';
import 'package:app_movil_telemedicina/widgets/custom_listtitle.dart';
import 'package:app_movil_telemedicina/widgets/perfil/description_multiline_widget.dart';
import 'package:app_movil_telemedicina/widgets/perfil/dividersection_widget.dart';
import 'package:app_movil_telemedicina/widgets/perfil/chipsection_widget.dart';

class PerfilPage extends StatefulWidget {
  // final UsuarioResponse()
  PerfilPage({Key key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final _scrollCustomController = new ScrollController();

  final _scrollPageController = new ScrollController();

  bool _available = true;

  ScrollPhysics _scrollCustomPhysics = AlwaysScrollableScrollPhysics();

  ScrollPhysics _scrollPagePhysics = NeverScrollableScrollPhysics();

  @override
  void initState() {
// testear para la pagina sobre convertir a simnglescrollpage

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
    void _scrollOn() {
      setState(() {});
      _scrollPagePhysics = _scrollCustomPhysics;
    }

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
              subtitle: 'Nombre del tipo',
              fotoUrl: 'https://picsum.photos/200',
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
                          children: contentDividerSection(),
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
                          children: contentDividerSection(),
                        ),
                        DividerSectionWidget(
                          title: "Informacion de usuario",
                          children: contentDividerSection(),
                        ),
                        DividerSectionWidget(
                          title: "Informacion de usuario",
                          children: contentDividerSection(),
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

Widget contentDividerSection() {
  return Column(children: [
    ListTile(
        leading: Icon(Icons.person, color: Colors.black),
        title: Text('One-line ListTile', style: TextStyle(fontSize: 14)),
        subtitle: Text('s')),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.phone, color: Colors.black),
        title: Text('One-line ListTile', style: TextStyle(fontSize: 14)),
        subtitle: Text('s')),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.location_on, color: Colors.black),
        title: Text('One-line ListTile', style: TextStyle(fontSize: 14)),
        subtitle: Text('s')),
    Divider(height: 0),
    ListTile(
        leading: Icon(Icons.email, color: Colors.black),
        title: Text('One-line ListTile', style: TextStyle(fontSize: 14)),
        subtitle: Text('s')),
  ]);
}
