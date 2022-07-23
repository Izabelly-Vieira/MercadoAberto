import 'package:flutter/material.dart';

class Card_assinatura extends StatelessWidget {
  const Card_assinatura({Key? key, required this.titulo}) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 5, 7, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: FractionalOffset(1.0, 0.2),
                colors: <Color>[
                  Color(0xfffa90f90),
                  Color(0xfff0c1a51),
                ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
