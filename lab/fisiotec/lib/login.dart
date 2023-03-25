import 'package:fisiotec/homepage.dart';
import 'package:fisiotec/register.dart';
import 'package:flutter/material.dart';

class Mylogin extends StatelessWidget {
  Mylogin({super.key});

  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.9,
              ],
              colors: [
                Color.fromARGB(255, 119, 0, 255),
                Color.fromARGB(255, 35, 156, 255),
              ],
            )
          ),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image(image: AssetImage("logo.png")),
                  SizedBox(height: 100),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (text) {
                      email = text;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Nome de usuário ou Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (text) {
                      senha = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:MaterialStateProperty.all(Size(4000, 40)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                      )
                    ),
                    onPressed: () {
                      if (email == "lucasvasstivensom@gmail.com" &&senha == "123") {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          )
                        );
                        } else {                       
                            print("Longin inválido, tente novamente");
                        }
                    },
                    child: Text("Conecte-se")
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 70),
                      Text(
                        "Não possui uma conta?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(30.0)
                            )
                          )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MyRegister()
                            )
                          );
                        },
                        child: Text("Registre-se")
                      )
                    ],
                  ),
                ],
              ),
            )
          )
        )
      ),
    );
  }
}