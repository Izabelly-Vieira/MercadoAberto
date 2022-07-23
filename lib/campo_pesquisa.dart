import 'package:flutter/material.dart';

class Campo_pesquisa extends StatelessWidget {
  const Campo_pesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (104),
      child: const Padding(
        padding: EdgeInsets.only(top: 3, bottom: 2),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            isDense: true,
//icone
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Color(0), width: 5.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide(color: Color(0), width: 5.0),
            ),
            hintText: 'Buscar no Mercado Aberto',
          ),
        ),
      ),
    );
  }
}
