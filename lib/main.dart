import 'package:flutter/material.dart';
import 'package:mercadolivre/botaoCategoria.dart';
import 'package:mercadolivre/bottom.dart';
import 'package:mercadolivre/card_assinatura.dart';
import 'package:mercadolivre/cepEnviar.dart';
import 'package:mercadolivre/decoration_body.dart';
import 'campo_pesquisa.dart';
import 'card_frete_gratis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Barra de pesquisa'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: ( // joga tudo para o lado esquerdo
              const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )),
          //title: const Center(child: Text ('Mercado Aberto'),), --- //coloca titulo no centro (cria um center e uma child e dentro da child coloca-se o texto)
          actions: const <Widget>[
            // joga tudo para o lado direito
            Campo_pesquisa(),

            Padding(
              padding: EdgeInsets.fromLTRB(6, 0, 12, 0),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            ) //cor é ao lado do icon
          ],

          bottom: const PreferredSize(
            preferredSize: Size(50, 30),
            child: cepEnviar(),
          ),

          backgroundColor:
              const Color(0xfff5d415), //comando que muda a cor apenas da barra
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  const decorat_body(),
                  const Card_assinatura(
                    titulo: "Assine o nível 6 por R\$ 9,90/mês!",
                  ),
                  const Card_frete_gratis(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 3),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: botao_categoria(
                            icone: Icons.phone_android,
                            text: "Recarregar",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: botao_categoria(
                            icone: Icons.local_offer_rounded,
                            text: "Ofertas",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: botao_categoria(
                            icone: Icons.shopping_basket_outlined,
                            text: "Mercado",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: botao_categoria(
                            icone: Icons.directions_car,
                            text: "Veculos",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: botao_categoria(
                            icone: Icons.add,
                            text: " Ver Mais",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
