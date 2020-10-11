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
              onPressed: () {},
            ),
            MaterialButton(
              child: Text(
                'Cambiar edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
              onPressed: () {},
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
