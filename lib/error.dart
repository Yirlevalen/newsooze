import 'package:flutter/material.dart';
import 'package:newsooze/main.dart';

class Error extends StatelessWidget {
  @override
  Widget error() {
    return Text(
      'Ups!'
      'Se ha presentado un error...'
      'Estamos trabajando para solucionarlo por favor recarga la página =)',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.normal),
      textAlign: TextAlign.center,
    );
  }

  Widget RecargaButton() {
    return Container(
      padding: EdgeInsets.all(25),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        color: Colors.white,
        child: Text(
          'Recargar',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        onPressed: () {},
      ),
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
              children: [error(), RecargaButton()],
            ),
          )),
    );
  }
}
