import 'package:flutter/material.dart';

void main() => runApp(MiTienda());

class MiTienda extends StatelessWidget {
  const MiTienda({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          title: Text('Mi Tienda ROSA OCHOA'),
          actions: [Icon(Icons.more_vert)],
          //centerTitle: true,  
          backgroundColor: const Color.fromARGB(255, 34, 240, 255),
          elevation: 10,
        ),
        body: Center(child: Text("Lista de productos disponibles")),
      ),
    );
  }
}
