import 'package:flutter/material.dart';
import '../widgets/menu_drawer.dart';

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  State<FormularioScreen> createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final _formKey = GlobalKey<FormState>(); // Clave para validar
  final TextEditingController _controller = TextEditingController();
  String _resultado = "";

  void _validar() {
    if (_formKey.currentState!.validate()) {
      // Lógica si el formulario es válido
      setState(() {
        int numero = int.parse(_controller.text);
        if (numero == 50) {
          _resultado = "¡Acertaste!";
        } else {
          _resultado = "Inténtalo de nuevo (Pista: es 50)";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejercicio Formulario")),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number, // Teclado numérico [cite: 100]
                decoration: const InputDecoration(
                  labelText: "Adivina el número (1-100)",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) return "Introduce un número";
                  if (int.tryParse(value) == null) return "Solo números válidos";
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _validar,
                child: const Text("Comprobar"),
              ),
              const SizedBox(height: 20),
              Text(_resultado, style: const TextStyle(fontSize: 18, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}