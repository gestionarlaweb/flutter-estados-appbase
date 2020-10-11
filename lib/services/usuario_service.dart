import 'dart:async';
import 'package:estados/models/usuario.dart';

// Servicio
class _UsuarioService {
  // Propiedad de tipo _usuario
  Usuario _usuario;

// StreamController para los cambios
  StreamController<Usuario> _usuarioStreamController =
      new StreamController<Usuario>.broadcast();

// Establecer como se lee la información
  Usuario get usuario => this._usuario;

  // Saber si ya existe usuario, si es diferente de null
  // significa que tenemos un usuario(true), en caso contrario (false)
  bool get existeUsuario => (this._usuario != null) ? true : false;

// obtener el Stream
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  // Métodos para cargar la información
  void cargarUsuario(Usuario user) {
    this._usuario = user;
    this._usuarioStreamController.add(user);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    this._usuarioStreamController.add(this._usuario);
  }

  dispose() {
    _usuarioStreamController?.close();
  }
}

// Esta instancia es el SINGLETON
final usuarioService = new _UsuarioService();
