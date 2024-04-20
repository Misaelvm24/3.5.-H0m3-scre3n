import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a Mi Aplicación'),
      ),
      body: SafeArea(
        child: Column(
          // Usar `Column` para distribuir verticalmente
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '¡Hola Mundo!',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20), // Espacio entre elementos
            Flexible(
              // Permitir que la imagen se adapte al espacio disponible
              child: Container(
                width: double.infinity, // Asegurar que tome todo el ancho
                height: 200, // Ajustar la altura para evitar desbordamientos
                child: Image.asset(
                  'assets/imagen_fondo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20), // Espacio entre imagen y icono
            Icon(
              Icons.home,
              size: 50,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
