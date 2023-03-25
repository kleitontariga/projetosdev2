import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:formulario/model/pokemon.dart';
import 'package:formulario/receba.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _nomeControl = TextEditingController();
  String? _tipo;
  int _tipoSec = 0;
  bool _magico = false, _fisico = false, _raro = false;

  void _getFields() {
    Pokemon poke =
        Pokemon(_nomeControl.text, _tipo, _tipoSec, _magico, _fisico, _raro);
    print(poke);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> Receba(pokemon:poke))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("POKEDEX",
              style: TextStyle(fontStyle: FontStyle.italic)),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Registro de Pokemón",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                maxLength: 30,
                controller: _nomeControl,
                decoration: InputDecoration(label: Text("Nome")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DropdownButton(
                    isExpanded: true,
                    value: _tipo,
                    hint: Text("Selecione o tipo"),
                    items: [
                      DropdownMenuItem(
                          child: Text("Terra"),
                          value: "Terra",
                          onTap: () {
                            _tipo = "Terra";
                          }),
                      DropdownMenuItem(
                          child: Text("Água"),
                          value: "Água",
                          onTap: () {
                            _tipo = "Água";
                          }),
                      DropdownMenuItem(
                          child: Text("Planta"),
                          value: "Planta",
                          onTap: () {
                            _tipo = "Planta";
                          }),
                      DropdownMenuItem(
                          child: Text("Fogo"),
                          value: "Fogo",
                          onTap: () {
                            _tipo = "Fogo";
                          }),
                      DropdownMenuItem(
                          child: Text("Voador"),
                          value: "Voador",
                          onTap: () {
                            _tipo = "Voador";
                          }),
                      DropdownMenuItem(
                          child: Text("Psíquico"),
                          value: "Psíquico",
                          onTap: () {
                            _tipo = "Psíquico";
                          }),
                      DropdownMenuItem(
                          child: Text("Pedra"),
                          value: "Pedra",
                          onTap: () {
                            _tipo = "Pedra";
                          }),
                      DropdownMenuItem(
                          child: Text("Elétrico"),
                          value: "Elétrico",
                          onTap: () {
                            _tipo = "Elétrico";
                          }),
                      DropdownMenuItem(
                          child: Text("Inseto"),
                          value: "Inseto",
                          onTap: () {
                            _tipo = "Inseto";
                          })
                    ],
                    onChanged: (obj) {
                      setState(() {});
                    }),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Radio(
                        value: 0,
                        groupValue: _tipoSec,
                        onChanged: (val) {
                          setState(() {
                            _tipoSec = 0;
                          });
                        }),
                    Text("Terra"),
                    SizedBox(width: 100),
                    Radio(
                        value: 1,
                        groupValue: _tipoSec,
                        onChanged: (val) {
                          setState(() {
                            _tipoSec = 1;
                          });
                        }),
                    Text("Água"),
                    SizedBox(width: 100),
                    Radio(
                        value: 2,
                        groupValue: _tipoSec,
                        onChanged: (val) {
                          setState(() {
                            _tipoSec = 2;
                          });
                        }),
                    Text("Fogo"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text("Ataques:"),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Checkbox(
                        value: _fisico,
                        onChanged: (val) {
                          setState(() {
                            _fisico = !_fisico;
                          });
                        }),
                    Text("Físico"),
                    SizedBox(width: 150),
                    Checkbox(
                        value: _magico,
                        onChanged: (val) {
                          setState(() {
                            _magico = !_magico;
                          });
                        }),
                    Text("Mágico"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SwitchListTile(
                  title: Text("Raro"),
                  value: _raro,
                  onChanged: (val) => setState(() {
                        _raro = !_raro;
                      })),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.only(top: 15, bottom: 15))),
                  onPressed: _getFields,
                  icon: Icon(Icons.catching_pokemon_sharp),
                  label: Text(
                    "Registrar",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
