import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listanumeros = [];
  int _ultimoItem = 0;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _agregar10();
      }
    });
  }

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
        controller: _scrollController,
        itemCount: _listanumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listanumeros[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300/?image=${imagen}'));
        });
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listanumeros.add(_ultimoItem);
    }
    setState(() {});
  }
}
