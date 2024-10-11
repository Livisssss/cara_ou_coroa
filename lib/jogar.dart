// ignore_for_file: prefer_const_constructors

import "package:cara_ou_coroa/resultado.dart";
import "package:flutter/material.dart";
import "dart:math";

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void exibirResultado() {
    var opcoes = ["cara", "coroa"];
    var numeroSorteado = Random().nextInt(opcoes.length);
    var resultadoSorteio = opcoes[numeroSorteado];

    //navegar para próxima página
    //passando resultado a ser exibido
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Resultado(resultado: resultadoSorteio),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Color(0xff61bd86),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logoC.png"),
              SizedBox(height: 100),
              GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: () {
                  exibirResultado();
                },
              )
            ],
          )),
    );
  }
}
