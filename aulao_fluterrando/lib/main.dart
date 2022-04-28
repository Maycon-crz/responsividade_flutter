//----------//----------//----------
//----------------------------------
//-----------WIDGETS FLEX-----------
//*Column
//*Row
//*Flexible
//*ConstrainedBox
//*Expended
//----------//----------//----------
//----------------------------------

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    //----------Exemplo de alinhamento e porcentagem
    // return Material(
    //   //------
    //   //Isso é a mesma coisa que fazer um Center por que o Center extende de Align
    //   child: Align(
    //     alignment: Alignment.center,
    //     //------
    //     child: Container(
    //       width: size.width * 0.25, // Dessa forma você consegue pegar a uma porcentagem específica da tela
    //       height: size.height* 0.25,
    //       color: Colors.red,
    //     ),
    //   ),
    // );
    //----------//----------//----------
    //----------------------------------
    //----------Exemplo de formulario responsivo
    // return Scaffold(
    //   backgroundColor: Colors.grey[200],
    //   body: Align(
    //     alignment: Alignment.center,
    //     child: ConstrainedBox(
    //       constraints: const BoxConstraints(
    //         maxWidth: 300,
    //       ),
    //       child: Card(
    //         elevation: 12,
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,//Adequa a coluna ao tamanho do card
    //             children: [
    //               const TextField(),
    //               const TextField(),
    //               const SizedBox(height: 15),
    //               ElevatedButton(
    //                 onPressed: () {},
    //                 child: const Text("Boora"),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    //----------//----------//----------
    //----------------------------------
    return Material(
      child: Row(
        children: [
          //Flexible é baseado no css
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          const Spacer(), //Espaço em branco
        ],
      ),
    );
  }
}
