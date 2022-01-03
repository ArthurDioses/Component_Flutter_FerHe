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
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(title: Text('Hola mundo cruel 1')),
      Divider(),
      ListTile(title: Text('Hola mundo cruel 2')),
      Divider(),
      ListTile(title: Text('Hola mundo cruel 3')),
      Divider(),
      ListTile(title: Text('Hola mundo cruel 4')),
    ];
  }
}
