import 'package:flutter/material.dart';
import 'package:school_alarm/src/paginas/alarma.dart';

class MyApp extends StatelessWidget {
  bool _showPerfomanceOverlay = false;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      showPerformanceOverlay: _showPerfomanceOverlay,
      debugShowCheckedModeBanner: false,
      title: 'School Alarma',
      home: new AlarmaPage(),
    );
  }
}