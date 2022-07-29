import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class decorat_body extends StatelessWidget {
  const decorat_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: FractionalOffset(0.5, 0.2),
              colors: <Color>[
            Color(0xfff5d415),
            Color(0xfff5f5f5),
          ])),
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 15),
      child: Image.asset("assets/anuncio.jpg"),
    );
}
