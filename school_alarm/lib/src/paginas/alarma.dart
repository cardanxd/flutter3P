import 'package:flutter/material.dart';

class AlarmaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AlarmaPageState();
}

class _AlarmaPageState extends State<AlarmaPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'images/reloj.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            _buildUser(),
            SizedBox(
              height: 10,
            ),
            _buildEmail(),
            SizedBox(
              height: 10,
            ),
            _buildPassword(),
            SizedBox(
              height: 20,
            ),
            _buildButton(),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[900],
    );
  }
}

Widget _buildUser() {
  return new Container(
    child: new Column(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue[900],
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'User type',
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildEmail() {
  return new Container(
    child: new Column(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue[900],
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'correo@dominio.com',
              prefixIcon: Icon(Icons.email),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildPassword() {
  return new Container(
    child: new Column(
      children: <Widget>[
        new Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue[900],
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'Password',
              prefixIcon: Icon(Icons.security),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildButton() {
  return new Container(
    child: new Column(
      children: <Widget>[
        MaterialButton(
          minWidth: 300.0,
          height: 40.0,
          onPressed: () {},
          color: Colors.orange,
          child: Text('Log in', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}
