import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:registro/model/seguro.dart';
import 'package:registro/receba.dart';
import 'package:registro/widgets/mydrawer.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _control = TextEditingController();
  String? _seg;
  int _radioSeg = 0;
  bool _testemunhas = false,
      _contratada = false,
      _contratante = false,
      _vip = false;

  void _getFields() {
    Seguro seg = Seguro(_control.text, _seg, _radioSeg, _testemunhas,
        _contratada, _contratante, _vip);
    print(seg);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Receba(seg: seg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MyDrawer(),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: Text("OrderDog",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 26))),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Registro de seguro",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 22)),
            TextField(
              controller: _control,
              maxLength: 30,
              decoration: InputDecoration(labelText: "Digite um endereço:"),
              
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(top: 1, bottom: 20))),
                  onPressed: _getFields,
                  icon: Icon(Icons.search),
                  label: Text(
                    "Buscar",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
