import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      body: Container(
        color: Colors.white,
        child: widgetTextField(),
      ),
    );
  }

  Padding widgetTextField() {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
                borderRadius: new BorderRadius.circular(25.0),
              ),
              hintText: 'Nome',
              labelStyle: TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
                borderRadius: new BorderRadius.circular(25.0),
              ),
              hintText: 'Email',
              labelStyle: TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
                borderRadius: new BorderRadius.circular(25.0),
              ),
              hintText: 'Senha',
              labelStyle: TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 3.0),
                borderRadius: new BorderRadius.circular(25.0),
              ),
              hintText: 'Confirme a Senha',
              labelStyle: TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
