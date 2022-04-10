import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class TarjetaScreen extends StatefulWidget {
  //alt izq para cambiar todos los nombres en ek campo
  const TarjetaScreen({Key? key}) : super(key: key);

  @override
  State<TarjetaScreen> createState() => _TarjetaScreen();
}

class _TarjetaScreen extends State<TarjetaScreen> {
  late TextEditingController _controller;
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const SizedBox(width: 1.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              width: 350.0,
              height: 350.0,
              //color: Colors.red,
              child: Image.asset(
                "img/debito.jpg", //agregar imagen desde caretas
                width: 950.0, //tamano de la imagen
                height: 950.0,
              ),
            ),
            inputEmail(_controller),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            inputCard(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            
            inputCard1(),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            inputCard2(),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => {}, child: const Text('Pagar'))
          ])),
    ));
  }
}

Widget inputCard() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(19)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}


Widget inputCard1() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 1.0),
    margin: const EdgeInsets.symmetric(horizontal: 90.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(3)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none, labelText: 'CVV', hintText: '012'),
    ),
  );
}

Widget inputCard2() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 1.0),
    margin: const EdgeInsets.symmetric(horizontal: 90.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 /]')),
        LengthLimitingTextInputFormatter(3)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none, labelText: 'Expiración', hintText: '10/22'),
    ),
  );
}

Widget inputEmail(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
//icon: Icon(Icons.contact_mail),
          prefixIcon: Icon(Icons.contact_mail),
          labelText: 'Nombre',
          hintText: 'Nombre completo'),
    ),
  );
}
