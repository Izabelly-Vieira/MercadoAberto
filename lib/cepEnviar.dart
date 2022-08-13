import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercadolivre/bottom.dart';

class cepEnviar extends StatefulWidget {
  const cepEnviar({Key? key}) : super(key: key);

  @override
  State<cepEnviar> createState() => _cepEnviarState();
}

class _cepEnviarState extends State<cepEnviar> {
  late TextEditingController controller = TextEditingController();
  dynamic enviaCep = '';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: const Icon(
          Icons.pin_drop_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Informe seu CEP"),
                  content: TextField(
                    autofocus: false,
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: "Digite aqui",
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        child: const Text("Cancelar"),
                        onPressed: () {
                          controller.clear();
                          Navigator.of(context).pop();
                        }),
                    TextButton(
                        child: const Text("Enviar"),
                        onPressed: () {
                          setState(() {
                            enviaCep = controller.text;
                          });
                          Navigator.of(context).pop();
                        })
                  ],
                );
              });
        },
      ),
      title: Text(
        "Enviar para : $enviaCep",
      ),
    );
  }
}
