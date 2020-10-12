import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Solo Android
        title: Text(
          "Página 1",
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<UsuarioCubit>().borrarUsuario();
              })
        ],
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(builder: (_, state) {
      if (state is UsuarioInitial) {
        return Center(
          child: Text('No hay información, estamos en el Estado inicial'),
        );
      } else if (state is UsuarioActivo) {
        return InformacionUsuario(state.usuario);
      } else {
        return Center(
          child: Text('Estado no reconocido'),
        );
      }
    });
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario(this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'General',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ListTile(
                title: Text('Nombre: ${usuario.nombre} '),
              ),
              ListTile(
                title: Text('Edad: ${usuario.edad}'),
              ),
              Text('Profesiones',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Divider(),
              ...usuario.profesiones
                  .map((profesion) => ListTile(
                        title: Text(profesion),
                      ))
                  .toList()
            ],
          ),
        ));
  }
}
