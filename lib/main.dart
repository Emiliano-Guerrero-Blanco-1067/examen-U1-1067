import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emiliano Guerrero Mat 22308051281067',
          style: TextStyle(color: Colors.tealAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 66, 13, 189),
        centerTitle: true,
      ),
      body: _myListView(context),
    );
  }

  Widget _myListView(BuildContext context) {
    final titles = [
      'Bicicleta',
      'Bote',
      'Autobús',
      'Coche',
      'Tren',
      'Correr',
    ];



    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus,
      Icons.directions_car,
      Icons.directions_railway,
      Icons.directions_run,
    ];

    // Lista de colores para los íconos
    final iconColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    // Lista de colores pastel para las tarjetas
    final cardColors = [
      Colors.red[100], // Rojo pastel
      Colors.blue[100], // Azul pastel
      Colors.green[100], // Verde pastel
      Colors.orange[100], // Naranja pastel
      Colors.purple[100], // Morado pastel
      Colors.teal[100], // Verde azulado pastel
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5, // Sombra de la tarjeta
          margin: EdgeInsets.all(15), // Margen de la tarjeta
          color: cardColors[index], // Color pastel de la tarjeta
          child: ListTile(
            leading: Icon(
              icons[index],
              color: iconColors[index], // Color del ícono
              size: 60, // Tamaño del ícono
            ),
            title: Text(
              titles[index],
              style: TextStyle(
                fontSize: 30, // Tamaño de fuente del título
                fontWeight: FontWeight.bold, // Negrita
              ),
            ),
          ),
        );
      },
    );
  }
}