import 'package:flutter/material.dart';

class botao_categoria extends StatefulWidget {
  const botao_categoria({ Key? key, required this.icone,  this.text}) : super(key: key);

  final IconData icone;
  final String? text;

  @override
  _botao_categoriaState createState() => _botao_categoriaState();
}

class _botao_categoriaState extends State<botao_categoria> {
  bool selecionado = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          selecionado = !selecionado
        })
      },
    child: Column(
      children: [
        Container(
         padding: EdgeInsets.fromLTRB(20,20, 20, 20),
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 182, 181, 181),
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(3, 4),
              )
            ]
          ),
          child:Icon(
          widget.icone,
          size: 30,
          color: selecionado ? Colors.blue : Colors.grey,
          
          ),
        ),
        Center(
          child: Padding(padding: EdgeInsets.only(top: 20),
          child: Text(widget.text ?? "", style: TextStyle(color: selecionado ? Colors.blue : Color.fromARGB(255, 83, 82, 82),),),),
        )
        
      ],
    ),
    );
  }
}