import 'package:flutter/material.dart';
import 'package:newsooze/main.dart';

class Feed extends StatelessWidget {
  @override
  Widget nombreSitio() {
    return Text(
      'Newsooze',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget buscar() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      height: 30,
      width: 200,
      decoration: myBoxDecoration(),
      child: Text(
        '',
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }

  Widget barra() {
    return Container(
      child: ListTile(
        trailing: Wrap(spacing: 70, // space between two icons
            children: <Widget>[
              Icon(Icons.home), // icon-1
              Icon(Icons.group), // icon-2
              Icon(Icons.circle_notifications_outlined),
              Icon(Icons.supervised_user_circle_rounded),
              // icon-2// icon-2
            ]),
      ),
    );
  }

  Widget publicar() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerRight,
      height: 30,
      width: 350,
      decoration: myBoxDecoration(),
      child: Text(
        'Publicar',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget espacioUsuario() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariouno() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariodos() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  Widget espacioUsuariotres() {
    return Container(
      margin: EdgeInsets.all(24),
      color: Colors.redAccent,
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(
          'Usuario feed de prueba feed de prueba feed de prueba feed de prueba'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://png.pngtree.com/thumb_back/fw800/background/20210429/pngtree-manuscript-effect-vintage-paper-image_676909.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                nombreSitio(),
                buscar(),
                barra(),
                publicar(),
                espacioUsuario(),
                espacioUsuariouno(),
                espacioUsuariodos(),
                espacioUsuariotres()
              ],
            ),
          )),
    );
  }
}
