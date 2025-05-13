import 'package:flutter/material.dart';
import 'dart:math';

class SegundaPage extends StatefulWidget {
  final String imageName;
  const SegundaPage({Key? key, required this.imageName}) : super(key: key);

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
  late int randomNumber;
  var fotos = ['images/pedra.png', 'images/papel.png', 'images/tesoura.png'];

  @override
  void initState() {
    super.initState();
    randomNumber = Random().nextInt(3);
    vencedor();
  }
  String resultado = "";
  String result = "";

  void vencedor() {
    String App = fotos[randomNumber];
    String Usuario = widget.imageName;

    if (App == Usuario) {
      resultado = "images/empate.png";
      result = 'Empatou!';
    } else if (
    (Usuario.contains("pedra") && App.contains("tesoura")) ||
        (Usuario.contains("papel") && App.contains("pedra")) ||
        (Usuario.contains("tesoura") && App.contains("papel"))
    ) {
      resultado = "images/ganhou.png";
      result = 'Venceu!';

    } else {
      resultado = "images/perdeu.png";
      result = 'Perdeu!';

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pedra, Papel , Tesoura',style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(fotos[randomNumber], width: 100),
          Text('Escolha do APP', style: Theme.of(context).textTheme.headlineMedium),
          Image.asset(widget.imageName, width: 100),
          Text('Sua escolha', style: Theme.of(context).textTheme.headlineMedium),
          Image.asset(resultado, width: 100),
          Text('Você '+ result, style: Theme.of(context).textTheme.headlineMedium),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ), child: Text('Jogar Novamente', style: TextStyle(color: Colors.white))
          )
        ],
      ),
    )

    );
  }
}
