import 'package:flutter/material.dart';
import 'src/pendiente.dart';
import 'src/terminada.dart';

//clase donde ser renderiza la pantalla de navegacion bottom tab
void main() {
  runApp(BottomNavigationBarExampleApp());
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

//se define la clase con estados
class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  //se define el constructor de la clase con estado
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

//clase con estado todo lo que tenga estado va aqui
class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[Pendiente(), Terminada()];

//funcion para controlar los botones tab
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //se crea la vista y controlador del bottom tab
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Pendiente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Terminada',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
