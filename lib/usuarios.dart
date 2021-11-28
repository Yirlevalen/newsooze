import 'package:flutter/material.dart';
import 'package:newsooze/main.dart';

class Usuarios extends StatelessWidget {
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
        trailing: Wrap(spacing: 60, // space between two icons
            children: <Widget>[
              Icon(
                Icons.home,
                size: 30,
              ), // icon-1
              Icon(
                Icons.group,
                color: Colors.redAccent,
                size: 30,
              ), // icon-2
              Icon(
                Icons.circle_notifications_outlined,
                size: 30,
              ),
              Icon(
                Icons.supervised_user_circle_rounded,
                size: 30,
              ),
              // icon-2// icon-2
            ]),
      ),
    );
  }

  Card miCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.all(3),
      color: Colors.transparent,
      elevation: 2,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(6, 4, 8, 0),
            title: Text('Usuario'),
            subtitle: Text('País, Ciudad'),
            leading: Icon(
              Icons.image,
              color: Colors.redAccent,
              size: 80,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () => {}, child: Text('Mensaje')),
            ],
          )
        ],
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
              children: [
                nombreSitio(),
                buscar(),
                barra(),
                miCard(),
                miCard(),
                miCard(),
              ],
            ),
          )),
    );
  }
}
