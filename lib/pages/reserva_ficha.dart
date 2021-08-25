import 'package:adobe_xd/adobe_xd.dart';
import 'package:app_movil_telemedicina/helpers/mostrar_alerta.dart';
import 'package:app_movil_telemedicina/models/listaMedico.dart';
import 'package:app_movil_telemedicina/models/ticket.dart';
import 'package:app_movil_telemedicina/services/auth_service.dart';
import 'package:app_movil_telemedicina/services/horario_service.dart';
import 'package:app_movil_telemedicina/services/reserva_service.dart';
import 'package:app_movil_telemedicina/widgets/reserva/perfil_medico.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:provider/provider.dart';

class ReservaFicha extends StatefulWidget {
  ReservaFicha({Key key}) : super(key: key);
  DateTime fechaSeleccionada = DateTime.now();

  @override
  _ReservaFichaState createState() => _ReservaFichaState();
}

class _ReservaFichaState extends State<ReservaFicha> {
  @override
  Widget build(BuildContext context) {
    final horarioService = Provider.of<HorarioService>(context, listen: false);
    final reservaFicha = Provider.of<ReservaService>(context, listen: false);
    final MedicoResponse perfil = ModalRoute.of(context).settings.arguments;

    // DateTime fechaSeleccionada;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // foregroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            _backgroundCustom(context),
            FutureBuilder(
              future: horarioService.cargarHorario(perfil.medico.id),
              builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                if (!snapshot.hasError) {
                  if (snapshot.hasData && snapshot.data == true) {
                    return Column(
                      children: [
                        PerfilMedico(
                          title:
                              '${perfil.persona.nombre} ${perfil.persona.apellido}',
                          subtitle: perfil.medico.especialidad,
                          img: perfil.usuario.img,
                          puntuaciacion: perfil.medico.calificacion.toString(),
                          tiempo: horarioService.horario.tiempo ?? '' + ' min',
                          horario:
                              '${horarioService.horario.horaInicio} - ${horarioService.horario.horaCierre}',
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Seleccione la fecha para su cita',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 110, 120, 247)),
                            )),
                        _widgetFecha(context),
                        Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Elije un horario',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 110, 120, 247)),
                            )),
                        SizedBox(height: 10),
                        FutureBuilder(
                          future: horarioService.cargarTicket(
                              perfil.medico.id,
                              formatDate(widget.fechaSeleccionada,
                                  [yyyy, '/', mm, '/', dd])),
                          builder: (BuildContext context,
                              AsyncSnapshot<bool> snapshot) {
                            if (snapshot.hasData) {
                              return _reservaFecha(horarioService, perfil);
                            } else {
                              return CircularProgressIndicator();
                            }
                          },
                        )
                      ],
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                } else {
                  return Text('No tiene ususario');
                }
              },
            ),
          ],
        ));
  }

  _widgetFecha(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child:
                  _customChip2(formatDate(widget.fechaSeleccionada, [yyyy]))),
          Expanded(
              child: _customChip2(formatDate(widget.fechaSeleccionada, [M]))),
          Expanded(
              child: _customChip2(formatDate(widget.fechaSeleccionada, [dd]))),
          Expanded(
              child: IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () async {
              await __selectFecha(context);
            },
          )),
        ],
      ),
    );
  }

  Future __selectFecha(BuildContext context) async {
    var picked = await _seleccionarFecha(context);

    if (picked != null) {
      widget.fechaSeleccionada = picked;
    }
    setState(() {});
  }

  _seleccionarFecha(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: widget.fechaSeleccionada,
      firstDate: new DateTime.now(),
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES'),
    );
    if (picked == null) return null;
    // var formatter = formatDate(picked, [yyyy, '-', M, '-', dd]);
    return picked;
  }

  Widget _backgroundCustom(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Pinned.fromPins(
      Pin(start: 0.0, end: 0.0),
      Pin(size: size.height * 0.3, start: -100.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: const Color(0xff40bdf3),
        ),
      ),
    );
  }

  Widget _reservaFecha(HorarioService horarioService, MedicoResponse perfil) {
    // var fechaSeleccionada = DateTime.parse('2021-05-21');
    var fechaSeleccionada = widget.fechaSeleccionada;
    List<DateTime> ticketsDisponible =
        calcularTicketDisponible(horarioService, fechaSeleccionada);

    int items = ticketsDisponible.length;

    int newLength = items % 2 == 0 ? items ~/ 2 : items ~/ 2 + 1;
    int extraIndex = -2;
    return Expanded(
      child: ListView.builder(
        itemCount: newLength, //items ~/ 2 + items % 2,
        itemBuilder: (_, index) {
          extraIndex += 2;
          return Row(
            children: [
              Expanded(
                  child: _customChip(context, ticketsDisponible, horarioService,
                      extraIndex, perfil)),
              Expanded(
                child: (extraIndex + 1 < items)
                    ? _customChip(context, ticketsDisponible, horarioService,
                        extraIndex + 1, perfil)
                    : Text(''),
              ),
            ],
          );
        },
      ),
    );
  }

  List<DateTime> calcularTicketDisponible(
      HorarioService horarioService, DateTime fechaSeleccionada) {
    String horaInicio = horarioService.horario.horaInicio;
    String horaCierre = horarioService.horario.horaCierre;

    String fecha = formatDate(fechaSeleccionada, [yyyy, '-', mm, '-', dd]);
    final int tiempo = int.parse(horarioService.horario.tiempo);

    var horaInicioDate = DateTime.parse("$fecha $horaInicio:00Z");
    var horaInicioDateAux = horaInicioDate;
    var horaCierreDate = DateTime.parse("$fecha $horaCierre:00Z");

    List<DateTime> ticketList = [];

    var isDateRecorded = false;

    while (hasMinuDif(horaCierreDate, horaInicioDateAux)) {
      if (horarioService.ticket?.tiques == null) {
        isDateRecorded = false;
      } else {
        horarioService.ticket.tiques.forEach((Tique tique) {
          var tiqueHoraInicio =
              DateTime.parse("$fecha ${tique.horaInicio}:00Z");
          var tiqueHoraFin = DateTime.parse("$fecha ${tique.horaFin}:00Z");

          var isDataBetweenInicio = this
              .isDateBetween(tiqueHoraInicio, tiqueHoraFin, horaInicioDateAux);
          var isDataBetweenCierre = this.isDateBetween(
              tiqueHoraInicio,
              tiqueHoraFin,
              horaInicioDateAux.add(Duration(minutes: tiempo - 1)));
          if (isDataBetweenInicio || isDataBetweenCierre) {
            isDateRecorded = true;
          }
        });
      }

      if (!isDateRecorded) {
        ticketList.add(horaInicioDateAux);
      }
      isDateRecorded = false;
      horaInicioDateAux = horaInicioDateAux.add(Duration(minutes: tiempo));
    }

    return ticketList;
  }

  bool isDateBetween2(
      DateTime horaInicio, DateTime horaCierre, DateTime horaMedio) {
    return !horaInicio.isAfter(horaMedio) && horaCierre.isAfter(horaMedio);
    // return horaCierre.isAfter(horaMedio) && horaInicio.isBefore(horaMedio);
  }

  bool isDateBetween(
      DateTime horaInicio, DateTime horaCierre, DateTime horaMedio) {
    return horaInicio.isBefore(horaMedio) && horaCierre.isAfter(horaMedio);
    // return horaCierre.isAfter(horaMedio) && horaInicio.isBefore(horaMedio);
  }

  bool hasMinuDif(DateTime horaCierre, DateTime horaInicioAux) {
    var difMinutes = horaCierre.difference(horaInicioAux).inMinutes;
    // return difMinutes >= 0; agarra un turno mas
    return difMinutes > 0;
  }

  Widget _customChip2(String label) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 50.0,
      child: Center(child: Text(label, style: TextStyle(fontSize: 20.0))),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 242, 242, 242),
      ),
    );
  }

  _registrarReserva(BuildContext context, ticketsDisponible, horarioService,
      index, MedicoResponse perfil) async {
    mostrarAlerta(context, "Confirmar",
        "¿Quieres realizar la reserva para una cita medica?", hasCancel: true,
        onPressed: () async {
      final reservaFicha = Provider.of<ReservaService>(context, listen: false);
      final authService = Provider.of<AuthService>(context, listen: false);
      final horarioService =
          Provider.of<HorarioService>(context, listen: false);
      bool ok = await reservaFicha.crearReserva(
          perfil.persona.id,
          authService.persona.id,
          widget.fechaSeleccionada,
          ticketsDisponible[index],
          horarioService.horario.tiempo);

      if (ok) {
        mostrarAlerta(context, "Regitro exitoso",
            "Has programado una cita medica de manera exitosa, espera la confirmacion de tu Medico",
            onPressed: () => Navigator.pushReplacementNamed(context, 'home'));
      } else {
        mostrarAlerta(context, "Regitro No guardado",
            "Ha ocurrido un error al guardar reservar tu cita medica");
      }
    });
  }

  Widget _customChip(BuildContext context, ticketsDisponible, horarioService,
      index, MedicoResponse perfil) {
    return ActionChip(
        padding: EdgeInsets.all(12),
        onPressed: () async {
          await _registrarReserva(
              context, ticketsDisponible, horarioService, index, perfil);
        },
        shape: StadiumBorder(
            side: BorderSide(
          width: 1,
          color: Theme.of(context).primaryColor,
        )),
        backgroundColor: Colors.white,
        label: Text(
          _rangoFecha(
              ticketsDisponible[index],
              ticketsDisponible[index].add(
                  Duration(minutes: int.parse(horarioService.horario.tiempo)))),
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  _rangoFecha(DateTime inicio, DateTime fin) {
    return formatDate(inicio, [HH, ':', nn, ' ', am]) +
        ' - ' +
        formatDate(fin, [HH, ':', nn, ' ', am]);
  }
}
