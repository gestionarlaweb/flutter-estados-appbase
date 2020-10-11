import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario _usuario;

  Usuario get usuario => this._usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;

  set usuario(Usuario user) {
    this._usuario = user;
    notifyListeners(); // with ChangeNotifier
    // Va a mandar un mensaje a todos los lugares
    // donde este utilizando la instancia
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    notifyListeners();
  }

  void removerUsuario() {
    this._usuario = null;
    notifyListeners();
  }

  void agregarPrefesion() {
    this
        ._usuario
        .profesiones
        .add('Profesión ${this._usuario.profesiones.length + 1}');
    notifyListeners();
  }
}
