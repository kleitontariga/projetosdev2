import 'package:fisiotec/homepage.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

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
                  SizedBox(height: 50),
                  Image(image: AssetImage("fisiotecvertical.png")),
                  SizedBox(height: 30),
                  Text(
                    "Apenas um passo de uma melhor qualidade de vida!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                  SizedBox(height: 150),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Nome completo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Nome de usuário",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.grey),
                      labelText: "Idade",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      )
                    )
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {},
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
                  SizedBox(height: 20),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        )
                      );
                    }, 
                    child: Text("Conecte-se")
                  )
                ]
              ),
            ),
          ),
        ),
      )
    );
  }
}