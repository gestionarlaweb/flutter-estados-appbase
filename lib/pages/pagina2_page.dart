import 'package:estados/bloc/usuario/usuario_bloc.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                child: Text('Establecer usuario',
                    style: TextStyle(color: Colors.white)),
                color: Colors.blue[900],
                onPressed: () {
                  final newUser = new Usuario(
                      nombre: 'David Rabassa',
                      edad: 47,
                      profesiones: ['Reponendor', 'Cajero']);

                  BlocProvider.of<UsuarioBloc>(context)
                      .add(ActivarUsuario(newUser));
                }),
            MaterialButton(
                child:
                    Text('Cambiar edad', style: TextStyle(color: Colors.white)),
                color: Colors.blue[900],
                onPressed: () {
                  BlocProvider.of<UsuarioBloc>(context).add(
                    CambiarEdad(50),
                  );
                }),
            MaterialButton(
              child: Text('Añadir profesión',
                  style: TextStyle(color: Colors.white)),
              color: Colors.blue[900],
              onPressed: () {
                BlocProvider.of<UsuarioBloc>(context).add(
                  AgregarProfesion('Programador Flutter'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
