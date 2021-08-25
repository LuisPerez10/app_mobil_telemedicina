import 'package:app_movil_telemedicina/services/busqueda_medico_service.dart';
import 'package:app_movil_telemedicina/services/horario_service.dart';
import 'package:app_movil_telemedicina/services/reserva_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_movil_telemedicina/services/BottomNavigationBarServices/ui_provider.dart';
import 'package:app_movil_telemedicina/services/auth_service.dart';
import 'package:app_movil_telemedicina/services/notification_service.dart';
import 'package:provider/provider.dart';
import 'package:app_movil_telemedicina/routes/routes.dart';
import 'package:app_movil_telemedicina/services/upload_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'bloc/trabajador_servicios_bloc.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.transparent,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final notification = new NotificationsService();
    notification.initNotifications();
    notification.mensajesStream.listen((data) {
      print('recibiendo notification');
      print(data);
      navigatorKey.currentState.pushNamed('login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthService()),
          ChangeNotifierProvider(create: (_) => FileUploadService()),
          ChangeNotifierProvider(create: (_) => UiProvider()),
          ChangeNotifierProvider(create: (_) => BusquedaMedicoService()),
          ChangeNotifierProvider(create: (_) => HorarioService()),
          ChangeNotifierProvider(create: (_) => ReservaService()),
          Provider(create: (_) => NotificationsService()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Good Doctor',
          navigatorKey: navigatorKey,
          localizationsDelegates: [
            // ... app-specific localization delegate[s] here
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en'), // English
            const Locale('es'), // Hebrew
            const Locale.fromSubtags(
                languageCode: 'zh'), // Chinese *See Advanced Locales below*
            // ... other locales the app supports
          ],
          // initialRoute: 'register_trabajador',
          initialRoute: 'loading',
          routes: appRoutes,
          theme: ThemeData(
            primaryColor: Color.fromARGB(255, 91, 198, 244),
          ),
        ));
  }
}
