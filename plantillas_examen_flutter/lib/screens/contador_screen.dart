import 'package:flutter/material.dart';
import '../widgets/menu_drawer.dart'; // No olvides importar tu drawer [cite: 53]

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key}); 
  // He quitado "final String sumar" porque no lo necesitas aquí.

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  // 1. VARIABLE DE ESTADO (Donde se guarda el número)
  int _contador = 0;

  // 2. FUNCIONES LÓGICAS (Usando setState para actualizar pantalla)
  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  void _decrementar() {
    setState(() {
      _contador--;
    });
  }

  void _resetear() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador Examen"),
      ),
      drawer: const MenuDrawer(), // OBLIGATORIO: El drawer en todas las pantallas [cite: 53]
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 3. MOSTRAR EL NÚMERO
            const Text("Número de clics:", style: TextStyle(fontSize: 20)),
            Text(
              '$_contador', 
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            
            // BOTONES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                // Botón Restar [cite: 31]
                FloatingActionButton(
                  heroTag: "btn1", 
                  onPressed: _decrementar,
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.remove),
                ),
                // Botón Resetear [cite: 31]
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: _resetear,
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.refresh),
                ),
                // Botón Sumar
                FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: _incrementar,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}