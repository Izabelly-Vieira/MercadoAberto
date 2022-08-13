import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercadolivre/enviarPara.dart';

class bottom extends StatelessWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const ListTile(
        leading: Icon(
          Icons.location_on_outlined,
          color: Colors.black,
        ),
        title: enviarPara(enviarText: ""),
      );
}
