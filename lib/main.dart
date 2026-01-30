import 'package:flutter/material.dart';

void main() => runApp(MiAppRegistro());

class MiAppRegistro extends StatelessWidget {
    const MiAppRegistro({super.key});

    @override
    Widget  build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Registro Ochoa",
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        //Rutas nombradas
        initialRoute: '/',
        routes: {
          '/': (context) => const PantallaBienvenida(),
          '/datos': (context) => const PantallaDatos(),
          '/final': (context) => const PantallaFinal(), 
        },// fin de routes
      );
    }// fin de Widget build
}// fin clase MiAppRegistro

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenida"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/datos'),
          child: Text("Empezar registro"),
        ),        
      ),

    );
  }//fin widget
}// fin pantallaBienvenido

class PantallaDatos extends StatelessWidget {
  const PantallaDatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos Personales"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/final'),
          child: Text("Finalizar registro"),
        ),        
      ),

    );
  }
}//fin de pantalladatos

class PantallaFinal extends StatelessWidget {
  const PantallaFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Final Rosy 8a"),
        backgroundColor: const Color.fromARGB(255, 255, 24, 236),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: Text("Volver a inicio"),
        ),  
        )
      );
    
  }//fin widget
}//fin pantallafinal