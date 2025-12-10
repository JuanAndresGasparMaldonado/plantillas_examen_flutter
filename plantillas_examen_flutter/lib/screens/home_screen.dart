import 'package:flutter/material.dart';
import '../widgets/menu_drawer.dart'; // Ajusta la ruta según tu carpeta

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla Principal"),
      ),
      drawer: const MenuDrawer(), // ¡CRUCIAL! Debe estar en todas las pantallas 
      body: SingleChildScrollView( // Para evitar overflow si hay muchas cosas
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Bienvenido al Examen", style: TextStyle(fontSize: 22)),
              const SizedBox(height: 20),
              // Aquí va el contenido de tu ejercicio (imágenes, textos, filas, etc.)
              Image.asset('assets/images/cara.png', width: 200),
            ],
          ),
        ),
      ),
    );
  }
}