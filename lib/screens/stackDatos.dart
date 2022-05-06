import 'package:flutter/material.dart';

class StackDatos extends StatelessWidget {
  const StackDatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pagina stack"),
        backgroundColor: Colors.blue[200],
      ),
      //body: StackSinPos()
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
            overflow: Overflow.visible,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            children: <Widget>[
              const SizedBox(width: 20.0),
              Container(
                width: 900.0,
                height: 900.0,
                //color: Colors.red,
                child: Image.asset(
                  "img/foto.jpeg", //agregar imagen desde caretas
                  width: 500.0, //tamano de la imagen
                  height: 500.0,
                ),
              ),
              Positioned(
                top: 150.0,
                left: 115.0,
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  //color: Colors.black,
                  child: const Text("Jesús Arturo P.M.",
                      style:
                          TextStyle(color: Color.fromARGB(255, 253, 253, 253))),
                ),
              ),
              Positioned(
                top: 175.0,
                left: 100.0,
                child: Container(
                  width: 100.0,
                  height: 30.0,
                  //color: Colors.purple,
                  child: ElevatedButton(
                    child: const Text("Regresar"),
                    onPressed: () => Navigator.pop(
                        context), //Pop borra a la segunda pantalla de memoria y regresa a la primera.
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
