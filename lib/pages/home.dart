import 'package:flutter/material.dart';
import '../pages/return.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title,style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset('images/padrao.png', width: 100),
          Text('Escolha o APP (Aleatório)', style: Theme.of(context).textTheme.headlineMedium,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  String imageName = "images/pedra.png";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SegundaPage(imageName: imageName),
                    ),
                  );
                },
                child: Image.asset('images/pedra.png', width: 100),
              ),
              GestureDetector(
                onTap: () {
                  String imageName = "images/papel.png";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SegundaPage(imageName: imageName),
                    ),
                  );
                },
                child: Image.asset('images/papel.png', width: 100),
              ),
              GestureDetector(
                onTap: () {
                  String imageName = "images/tesoura.png";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SegundaPage(imageName: imageName),
                    ),
                  );
                },
                child: Image.asset('images/tesoura.png', width: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}