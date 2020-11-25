import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool _showPerfomanceOverlay = false;
  @override
  Widget build(BuildContext context) {
    
    Color color = Colors.brown;

    Widget buttonSection1 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.info, 'Iformacion'),
          _buildButtonColumn(color, Icons.person, 'Mi cuenta'),
          _buildButtonColumn(color, Icons.assignment_ind, 'Acreditaciones'),
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.assignment, 'Tickets'),
          _buildButtonColumn(color, Icons.group, 'Expositores'),
          _buildButtonColumn(color, Icons.map, 'Planos'),
        ],
      ),
    );

    Widget buttonSection3 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.date_range, 'Actividades'),
          _buildButtonColumn(color, Icons.card_giftcard, 'Premios y concursos'),
          _buildButtonColumn(color, Icons.description, 'Noticias'),
        ],
      ),
    );

    Widget buttonSection4 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.format_list_bulleted, 'Agenda'),
          _buildButtonColumn(color, Icons.notifications, 'Notificaciones'),
          _buildButtonColumn(color, Icons.public, 'FIMA TV'),
        ],
      ),
    );

    return MaterialApp(
      showPerformanceOverlay: _showPerfomanceOverlay,
      debugShowCheckedModeBanner: false,
      title: 'FIMA 2020',
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'images/logo.png',
              width: 600,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50,
            ),
            buttonSection1,
            SizedBox(
              height: 50,
            ),
            buttonSection2,
            SizedBox(
              height: 50,
            ),
            buttonSection3,
            SizedBox(
              height: 50,
            ),
            buttonSection4,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}