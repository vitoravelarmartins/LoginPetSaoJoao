import 'dart:collection';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:primer_project/widgets/login.dart';

void main() {
  runApp(
    MaterialApp(
//      theme: ThemeData(
//          primarySwatch: Colors.blue
//      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImagenFront(),
            Container(
              height: 100.0,
              width: 400.0,
              child: GoToLogin(),
            ),
          ],
        ),
      ),
    ),
  );
}

class GoToLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            color: Colors.black,
            child: ButtonTheme(
              child: RaisedButton(
                color: Colors.amber,
                child: Text('LOGIN'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaginaLogin()),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImagenFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.white,
        height: 400.0,
        width: 300.0,
        child: Container(
          child: Image.asset('imagens/doghero.png'),
        ),
      ),
    );
  }
}

class PaginaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Login',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Login(),

    );
  }
}
