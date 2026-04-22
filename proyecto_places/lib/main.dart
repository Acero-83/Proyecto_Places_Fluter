import 'package:flutter/material.dart';
// Importamos tu nueva pantalla de login que está en la misma carpeta
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      // Esto oculta la pequeña etiqueta roja de "DEBUG" en la esquina superior derecha
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Aquí está el cambio clave: el inicio de la app ahora es LoginScreen
      home: const LoginScreen(),
    );
  }
}
