import 'package:flutter/material.dart';
import 'package:plantillas_examen_flutter/screens/ejercicio_form.dart';
import 'package:plantillas_examen_flutter/screens/perfil_screen.dart';
// Importa tus pantallas aquí
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/contador_screen.dart';
import 'screens/formulario_simple.dart';
// import 'screens/ejercicio_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // OBLIGATORIO: Quitar etiqueta debug
      title: 'Examen Flutter',
      // TEMA PERSONALIZADO
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ), // Cambia el color base aquí
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      // RUTAS NOMBRADAS
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/perfil' : (context) => const PerfilScreen(),
        '/form': (context) => const FormularioScreen(),
        '/contador' : (context) => const ContadorScreen(),
        '/formulario' : (context) => const FormularioSimple()
        // Añade aquí tus ejercicios
      },
    );
  }
}
