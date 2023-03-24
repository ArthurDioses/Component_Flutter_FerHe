import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listanumeros = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: _crearLista());
  }

  Widget _crearLista() {
    return ListView.builder(
        itemCount: _listanumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listanumeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300/?image=${imagen}'));
        });
  }
}
