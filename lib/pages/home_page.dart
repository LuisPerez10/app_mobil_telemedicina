import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_movil_telemedicina/models/usuario.dart';
import 'package:app_movil_telemedicina/pages/historial_page.dart';
import 'package:app_movil_telemedicina/pages/perfil_page.dart';
import 'package:app_movil_telemedicina/pages/perfil_user_page.dart';
import 'package:app_movil_telemedicina/services/BottomNavigationBarServices/ui_provider.dart';
import 'package:app_movil_telemedicina/services/auth_service.dart';
import 'package:app_movil_telemedicina/services/notification_service.dart';
import 'package:app_movil_telemedicina/widgets/BottomNavigationBarWidget/custom_navigatorbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final notificacion =
        Provider.of<NotificationsService>(context, listen: false);
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar(), body: _HomePageBody());
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    // Usar el ScanListProvider
    // final scanListProvider =
    //     Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        // scanListProvider.cargarScanPorTipo('geo');
        return Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    child: Text('Buscar Medico',
                        style: TextStyle(color: Colors.white)),
                    color: Theme.of(context).primaryColor,
                    shape: StadiumBorder(),
                    elevation: 0,
                    splashColor: Colors.transparent,
                    onPressed: () async {
                      await Navigator.pushNamed(context, 'buscar2');
                    }),
                    Divider( ),
                     MaterialButton(
                    child: Text('Fichas Medicas',
                        style: TextStyle(color: Colors.white)),
                    color: Theme.of(context).primaryColor,
                    shape: StadiumBorder(),
                    elevation: 0,
                    splashColor: Colors.transparent,
                    onPressed: () async {
                      await Navigator.pushNamed(context, 'fichamedica');
                    })
              ],
            ),
          ),
        ); //MapasPage();

      case 1:
        // scanListProvider.cargarScanPorTipo('http');
        final authService = Provider.of<AuthService>(context);
        final notificacion =
            Provider.of<NotificationsService>(context, listen: false);
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Logout'),
                onPressed: () async {
                  await notificacion.borrarTokenFCMServices();
                  authService.logout();
                  Navigator.pushReplacementNamed(context, 'login');
                },
              ),
              Text('Logeado')
            ],
          ),
        ); //DireccionesPage();

      case 2:
        // scanListProvider.cargarScanPorTipo('geo');
        return PerfilUserPage();
      case 3:
        // scanListProvider.cargarScanPorTipo('geo');
        return HistorialPage();
      default:
        return Container(
          child: Text('TAP 0 Default'),
        );
    }
  }
}
