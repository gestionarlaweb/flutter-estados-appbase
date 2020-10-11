import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Solo Android
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario.nombre}')
            : Text('Pagina 2'),
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
                final newUser = new Usuario(
                  nombre: 'David',
                  edad: 47,
                  profesiones: ['FullStack Developer', 'UX-Desing'],
                );
                usuarioService.usuario = newUser;
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {
                usuarioService.cambiarEdad(45);
              },
            ),
            MaterialButton(
              child: Text(
                'Añadir profesión',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {
                usuarioService.agregarPrefesion();
              },
            )
          ],
        ),
      ),
    );
  }
}
