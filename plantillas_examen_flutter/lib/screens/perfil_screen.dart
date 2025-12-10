import 'package:flutter/material.dart';
import 'package:plantillas_examen_flutter/widgets/menu_drawer.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi perfil")),
      drawer: const MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50, 
              backgroundImage: AssetImage(
                'assets/images/cara.png',
              ),
            ),
            const SizedBox(height: 20),
            Text("Juan Andrés Gaspar Maldonado"),
          ],
        ),
      ),
    );
  }
}
