import 'package:flutter/material.dart';
import './DetallesData.dart';

class Detalles extends StatelessWidget {
  final DetallesData data;
  Detalles({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detalles"),
          //icono de flecha para regresar
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              //regresa a la pantalla de atras
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("titulo ${data.title}"),
            Text("id ${data.id}"),
          ],
        )),
      ),
    );
  }
}
