part of 'usuario_bloc.dart';

class UsuarioState {
  final bool existeUsuario;
  final Usuario usuario;

  // Constructor
  UsuarioState({Usuario user})
      : usuario = user ?? null,
        existeUsuario = (user != null) ? true : false;
}
