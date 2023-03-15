import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta Tarjeta'),
            subtitle: Text(
                'Aquí estamos con la descripción de la tarjeta que quiero que usetdes vean para que tengan una idea de lo que se quiera mostrar'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text('Cancelar'), onPressed: () {}),
              FlatButton(child: Text('Ok'), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://cdnb.artstation.com/p/assets/images/images/018/332/749/large/george-britton-infinitywarlongpostercc.jpg?1558989465'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          /*
          Image(
            image: NetworkImage(
                'https://cdnb.artstation.com/p/assets/images/images/018/332/749/large/george-britton-infinitywarlongpostercc.jpg?1558989465'),
          ),
          */
          Container(
              padding: EdgeInsets.all(10.0), child: Text('No se qué poner'))
        ],
      ),
    );
  }
}
