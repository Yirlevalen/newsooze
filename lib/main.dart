import 'package:flutter/material.dart';
import 'package:newsooze/notificaciones.dart';
import 'package:newsooze/perfil.dart';
import 'package:newsooze/usuarios.dart';
import 'loginPage.dart';
import 'registro.dart';
import 'feed.dart';
import 'error.dart';
import 'ajustes.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/login': (context) => LoginPage(),
      '/registro': (context) => Registro(),
      '/feed': (context) => Feed(),
      '/usuarios': (context) => Usuarios(),
      '/notificaciones': (context) => Notificaciones(),
      '/perfil': (context) => Perfil(),
      '/error': (context) => Error(),
      '/ajustes': (context) => Ajustes(),
    },
    initialRoute: '/ajustes',
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' ',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
