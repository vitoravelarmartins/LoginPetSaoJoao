import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final myControllerUser = TextEditingController();
  final myControllerPass = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    controller: myControllerUser,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                    decoration: InputDecoration(
                        labelText: "Usuário",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    autofocus: true,
                    controller: myControllerPass,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                    decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ButtonTheme(
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {
                          String resposta = "Login realizado com sucesso";
                          if (myControllerUser.text != "admin" ||
                              myControllerPass.text != "petsaojoao") {
                            resposta = "Erro! Login NEGADO";
                          }
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(resposta),
                                elevation: 24.0,
                                backgroundColor: Colors.amber,
                              );
                            },
                          );
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  @override
  void dispose() {
    myControllerUser.dispose();
    super.dispose();

    myControllerPass.dispose();
    super.dispose();
  }
}
