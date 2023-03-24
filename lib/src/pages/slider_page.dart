import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_crearSlider(), Expanded(child: _crearImagen())],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        //divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://i.pinimg.com/originals/b6/dd/57/b6dd57cea1bc52707a42de8e9dc48d8a.png"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
