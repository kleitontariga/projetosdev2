import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/tela2.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController _controlUser = TextEditingController();
  TextEditingController _controlPass = TextEditingController();
  bool _iconPass = true;
  bool _check = false;

  void _changeIconPass() {
    setState(() {
      _iconPass = !_iconPass;
    });
    print(_iconPass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Image(image: AssetImage("logotipo.jpg")),
            
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
              child: TextField(
                controller: _controlUser,
                style: TextStyle(fontSize: 20),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Nome de usuário",
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
              child: TextField(
                controller: _controlPass,
                style: TextStyle(fontSize: 20),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Senha",
                    suffixIcon: IconButton(
                        onPressed: _changeIconPass,
                        icon: (_iconPass)
                            ? Icon(Icons.password)
                            : Icon(Icons.remove_red_eye))),
                obscureText: _iconPass,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 30),
              child: CheckboxListTile(
                  title: Text("mantenha-me conectado"),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _check,
                  onChanged: (p){
                    setState (() {
                      _check = !_check;
                    });
                  }
                )
              ),
                    
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.only(
                          right: 100, left: 100, top: 20, bottom: 20))),
                  onPressed: () {
                    print("Usuário: ${_controlUser.text}");
                    print("senha: ${_controlPass.text}");
                    Navigator.push(
                      context,
                      MaterialPageRoute(   builder: (context)=>Tela2() )
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 26)
                 )
                )
               ) 
          ],
        ),
      ),
    );
  }
}
