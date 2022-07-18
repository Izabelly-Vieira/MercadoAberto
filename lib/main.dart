import 'package:flutter/material.dart';

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
            Container(
              width: MediaQuery.of(context).size.width - (104),
              child: const Padding(
                padding: EdgeInsets.only(top: 3, bottom: 2),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    isDense: true,
//icone
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
            ),

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
          children: <Widget> [
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
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 30),
                child: Image.asset("assets/anuncio.jpg"),
              ),
              // Container(
              //   child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //                primary: Colors.black,
              //                onSurface: Colors.black,
              //                shadowColor: Colors.black,
              //                //make color or elevated button transparent
              //             ),
                          
              //             onPressed: (){
              //                 print("You pressed Elevated Button");
              //             }, 
              //             child: Padding(
              //               padding:EdgeInsets.fromLTRB(60, 18, 25, 0),
              //               child:Text("Press This Button"),
              //             ),
              // ),)
              ],
            ),
            )
          ],
          
        ));
  }
}
