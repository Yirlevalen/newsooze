import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final correo = TextEditingController();
  final clave = TextEditingController();

  String usu = '';
  String pass = '';

  Widget nombre() {
    return Text(
      'Iniciar Sesion',
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget createEmailInput() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        controller: correo,
        decoration: InputDecoration(
          hintText: 'Correo Electronico',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget createPasswordInput() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TextField(
        controller: clave,
        decoration: InputDecoration(
          hintText: 'Clave',
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
        padding: EdgeInsets.all(25),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          color: Colors.redAccent,
          child: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            usu = correo.text;
            pass = clave.text;

            if (usu == 'eer@hotmail.com' && pass == '4321') {
            } else {
              var context;
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text('Newsooze'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text('Verifica tus datos'),
                            ],
                          ),
                        ),
                        actions: [
                          FlatButton(
                            child: Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text('Cancelar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ]);
                  });
            }

            correo.text = '';
            clave.text = '';
          },
        ));
  }

  Widget renderCreateAccountLink() {
    return Container(
        padding: EdgeInsets.only(top: 100),
        child: Text(
          '¿Nuevo en la página?',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  Widget registro() {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          'Registrarse',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
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
                nombre(),
                createEmailInput(),
                createPasswordInput(),
                loginButton(),
                renderCreateAccountLink(),
                registro(),
              ],
            ),
          )),
    );
  }
}
