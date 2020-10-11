import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Solo Android
        title: Text(
          "Página 2",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Establecer usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {
                final nuevoUsuario = new Usuario(nombre: 'David', edad: 47);
                usuarioService.cargarUsuario(nuevoUsuario);
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {
                usuarioService.cambiarEdad(50);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir profesión',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
