import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 300,
              child: Image(image: AssetImage("odlogo.png")),
            ),
            Container(
                padding: EdgeInsets.only(left: 80, right: 80),
                child: TextField(
                  style: TextStyle(fontSize: 22),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_3_outlined),
                      label: Text("Usuário")),
                )),
            Container(
                padding: EdgeInsets.only(left: 80, right: 80, top: 20),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 22),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_outlined)),
                      label: Text("Senha")),
                )),
            Container(
              padding: EdgeInsets.only(left: 80, right: 80, top: 20),
              child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Mantenha-se conectado"),
                  value: true,
                  onChanged: (p) {}),
            ),
            Container(
              width: double.infinity,
              height: 55,
              padding: EdgeInsets.only(left: 120, right: 120, top: 20),
              child: ElevatedButton.icon(
                  icon: Icon(Icons.key),
                  onPressed: () {},
                  label: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
