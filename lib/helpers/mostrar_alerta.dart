import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostrarAlerta(BuildContext context, String titulo, String subtitulo,
    {Function onPressed,
    Function onPressedCancel,
    String textConfirm,
    bool hasCancel = false}) {
  if (Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(titulo),
              content: Text(subtitulo),
              actions: <Widget>[
                (hasCancel)
                    ? MaterialButton(
                        child: Text('Cancelar'),
                        elevation: 5,
                        textColor: Colors.blue,
                        onPressed:
                            onPressedCancel ?? () => Navigator.pop(context))
                    : Text(''),
                MaterialButton(
                    child: Text(textConfirm ?? "Ok"),
                    elevation: 5,
                    textColor: Colors.blue,
                    onPressed: onPressed ?? () => Navigator.pop(context)),
              ],
            ));
  }

  showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
            title: Text(titulo),
            content: Text(subtitulo),
            actions: <Widget>[
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('Ok'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ));
}
