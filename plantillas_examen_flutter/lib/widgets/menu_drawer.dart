import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // CABECERA DEL DRAWER (Personalizar con imagen y nombre) [cite: 7, 178]
          const UserAccountsDrawerHeader(
            accountName: Text("Tu Nombre Completo"),
            accountEmail: Text("examen@flutter.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/tu_foto.jpg',
              ), // Asegura que existe en assets
              // O usa backgroundColor: Colors.white si no tienes foto aún
            ),
            decoration: BoxDecoration(color: Colors.indigo),
          ),

          // ELEMENTOS DEL MENÚ
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio"),
            onTap: () {
              // PushReplacement para que no se acumulen pantallas infinitas
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const Divider(), // Separador visual
          ListTile(
            leading: const Icon(Icons.calculate),
            title: const Text("Ejercicio Contador"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/contador'); // Solo cerrar si no tienes la ruta hecha aún
            },
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text("Ejercicio Formulario"),
            onTap: () {
              // Navigator.pushReplacementNamed(context, '/form');
              Navigator.pushReplacementNamed(context, '/form');
            },
          ),
          ListTile(
            leading: const Icon(Icons.picture_as_pdf),
            title: const Text("Mi Perfil"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/perfil');
            },
          ),
          ListTile(
            leading: const Icon(Icons.picture_as_pdf),
            title: const Text("Mi Formulario"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/formulario');
            },
          )
        ],
      ),
    );
  }
}
