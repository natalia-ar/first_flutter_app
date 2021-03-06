import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
//ctrl + clique para ver a biblioteca

void main() {

  runApp(new MaterialApp(
   debugShowCheckedModeBanner: false,
    home:  HomeStateful  (),
    ));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  final _style = TextStyle(fontSize: 22, fontWeight: FontWeight.w400);
  var _frases = [

    "Nada é pequeno se feito com amor.",
    "A medida do amor é amar sem medida.",
    "Nunca compreenderemos o quanto um simples sorriso pode fazer.",
    "Todo mal é ausência de amor.",
    "Comece fazendo o que é necessário, depois o que é possível, e de repente você estará fazendo o impossível."
  ];
  var _botaoFrase = "Clique no botão para gerar uma nova frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
      setState(() {
        _botaoFrase = _frases[numeroSorteado];
      });

  }

  @override
  Widget build(BuildContext context) {
    var _titulo = "Frases do dia";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titulo,
          style: GoogleFonts.sourceSansPro(
            textStyle: _style
          ),
          ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container (
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.deepPurple)
        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/aspas.png",
              alignment: Alignment.center,
            ),

            Text(_botaoFrase,
              textAlign: TextAlign.center,
              style: _style,),

            Padding(
                padding: EdgeInsets.only(top: 60)
            ),

            ElevatedButton(

              onPressed: _gerarFrase,
              child: Text("nova frase",
              style:
              TextStyle(
                fontSize: 20
              ),),
            )
          ],
        ),
      )
    );
  }
}


