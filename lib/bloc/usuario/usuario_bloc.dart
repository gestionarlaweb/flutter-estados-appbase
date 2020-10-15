import 'package:estados/models/usuario.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(UsuarioState());

  // Recibe el evento y cambia el Estado
  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async* {
    if (event is ActivarUsuario) {
      yield UsuarioState(user: event.usuario);
    } else if (event is CambiarEdad) {
      yield UsuarioState(
        user: state.usuario.copyWith(edad: event.edad),
      );
    } else if (event is AgregarProfesion) {
      yield UsuarioState(
        user: state.usuario.copyWith(
            profesiones: [...state.usuario.profesiones, event.profesion]),
      );
    } else if (event is BorrarUsuario) {
      yield UsuarioState();
    }
  }
}
