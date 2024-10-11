import "package:flutter/material.dart";

class Resultado extends StatefulWidget {
  final String resultado;
  const Resultado({super.key, required this.resultado});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.resultado == 'cara'){
      caminhoImagem = "images/moeda_cara.png";
    }else{
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xff61bd86),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(caminhoImagem),
              SizedBox(height: 50),
              GestureDetector(
                child: Image.asset("images/botao_voltar.png"),
                onTap: (){
                  Navigator.pop(context);
                },
                ),
            ]
        ),
      ),
    );
  }
}