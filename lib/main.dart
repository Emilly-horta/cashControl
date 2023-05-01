import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

var maskFormatterCPF = new MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

var maskFormatterCNPJ = new MaskTextInputFormatter(
    mask: "##.###.###/####-##",
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.greenAccent,
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 56, 170, 62))),
      debugShowCheckedModeBanner: false,
      home: WidgetsBasicos(),
    );
  }
}

class WidgetsBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastre-se"),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.0),
              ),
              Text(
                'Criar Conta',
                textDirection: TextDirection.ltr,
                style: GoogleFonts.getFont('Montserrat', fontSize: 30.0),
              ),
              widgetTextField(),
              Text(
                'Qual modalidade?',
                textDirection: TextDirection.ltr,
                style: GoogleFonts.getFont('Montserrat', fontSize: 20.0),
              ),
              textFieldModalidade(),
              Text(
                'Qual categoria?',
                textDirection: TextDirection.ltr,
                style: GoogleFonts.getFont('Montserrat', fontSize: 20.0),
              ),
              textFieldCategoria(),
              TextButton(
                child: Text('Cadastrar'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[800],
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  print('Cadastrado');
                },
              )
            ]),
      ),
    );
  }

  Padding widgetTextField() {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nome',
                labelStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Senha',
                labelStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 50,
            width: 500,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Repita a Senha ',
                labelStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding textFieldModalidade() {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        height: 50,
        width: 500,
        decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Confirme a Senha',
            labelStyle: TextStyle(
              fontSize: 50,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }

  Padding textFieldCategoria() {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        height: 50,
        width: 500,
        decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Confirme a Senha',
            labelStyle: TextStyle(
              fontSize: 50,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
