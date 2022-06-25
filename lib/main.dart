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
  int _counter = 0;
  

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        leading:( // joga tudo para o lado esquerdo
          Icon(Icons.menu, color: Colors.black,)
        ),
        actions: [// joga tudo para o lado direito
        Padding(padding: EdgeInsets.all(20), // Para espaçamento (padding)
        child:Icon(Icons.shopping_cart_outlined, color: Colors.black,) //cor é ao lado do icon
        ,),
          Text("nfsg")
        ],
      



        backgroundColor: Color(0xfff5d415), //comando que muda a cor apenas da barra
      ),
      body: Center(
       
      ),
    );
  }
}
