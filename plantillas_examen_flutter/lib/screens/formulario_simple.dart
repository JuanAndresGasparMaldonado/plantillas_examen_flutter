import 'package:flutter/material.dart';
import '../widgets/menu_drawer.dart'; // IMPORTANTE: No olvides esto

class FormularioSimple extends StatefulWidget {
  const FormularioSimple({super.key});

  @override
  State<FormularioSimple> createState() => _FormularioSimpleState();
}

class _FormularioSimpleState extends State<FormularioSimple> {
  // 1. LA CLAVE DEL FORMULARIO (Es como el "DNI" para validarlo)
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Formulario Básico")),
      drawer: const MenuDrawer(), // 2. OBLIGATORIO: El Drawer
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // Asignamos la clave aquí
          child: Column(
            children: [
              // --- CAMPO DE TEXTO ---
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Introduce tu nombre",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                // Lógica de validación
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, escribe algo'; // Mensaje de error
                  }
                  return null; // Null significa que está todo OK
                },
              ),
              
              const SizedBox(height: 20),

              // --- BOTÓN DE ENVIAR ---
              ElevatedButton(
                onPressed: () {
                  // Preguntamos al formulario si todo es válido
                  if (_formKey.currentState!.validate()) {
                    // Si es válido, mostramos un mensaje
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('¡Formulario correcto!')),
                    );
                  }
                },
                child: const Text("Validar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}