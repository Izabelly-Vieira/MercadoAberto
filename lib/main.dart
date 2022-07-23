import 'package:flutter/material.dart';
import 'campo_pesquisa.dart';

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
          actions: <Widget>[
            // joga tudo para o lado direito
            Campo_pesquisa(),

            const Padding(
              padding: EdgeInsets.fromLTRB(6, 0, 12, 0),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            ) //cor é ao lado do icon
          ],

          bottom: const PreferredSize(
            preferredSize: Size(50, 30),
            child: ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              title: Text(
                  'Enviar para Marcello Queiroz - Rua Jardim Paulista, 56'),
            ),
          ),

          backgroundColor:
              const Color(0xfff5d415), //comando que muda a cor apenas da barra
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  Container(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 5, 7, 5),
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
                          const Text(
                            "Assine o nível 6 por R\$ 9,99/mês!",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 10, 13, 0),
                    child: Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0.5,
                            blurRadius: 2,
                            offset: const Offset(0, 1.5),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.local_shipping_outlined,
                            color: Color(0xff43b176),
                          ),
                          Text(
                            "Frete Grátis",
                            style: TextStyle(
                              color: Color(0xff43b176),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "em milhões de produtos a partir de RS79",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
