import 'package:component_flutter_ferhe/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data) {
    final List<Widget> opciones = [];
    data!.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.adb, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider());
    });
    return opciones;
  }
}
