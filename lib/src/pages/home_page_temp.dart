import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String opt in opciones) {
      final tempWidgte = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidgte)
        ..add(Divider(height: 5.0, thickness: 0.3, color: Colors.blue));
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return [];
  }
}
