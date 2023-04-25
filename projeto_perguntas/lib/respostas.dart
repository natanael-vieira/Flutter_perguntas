import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Respostas(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        width: double.infinity,
        child: ElevatedButton(
          child: Text(texto),
          onPressed: quandoSelecionado,
        ),
      );
    });
  }
}
