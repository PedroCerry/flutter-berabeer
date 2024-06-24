import 'package:berabear/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(BuildRouters());
  doWhenWindowReady(() {
    var tamanhoInicial = Size(450, 600);
    appWindow.size = tamanhoInicial;
    appWindow.minSize = tamanhoInicial;
    appWindow.maxSize = tamanhoInicial;
    appWindow.title = 'Bera Bear';
    appWindow.show();
    //appWindow.size =
  });
}
