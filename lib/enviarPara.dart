import 'package:flutter/material.dart';

class enviarPara extends StatefulWidget {
  const enviarPara({ Key? key, required this.enviarText }) : super(key: key);
  
  final String enviarText;

  @override
  _enviarParaState createState() => _enviarParaState();
}

class _enviarParaState extends State<enviarPara> {
  @override
  String text = "";

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          text = "Marcello Queiroz - Rua Jardim Paulista, 56"
        })
      },
    child: Text('Enviar para $text')); 
  }
}