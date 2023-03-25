import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  String dadosClick = "Nome:${content[index]["nome"]}" +
  "Idade:${content[index]["idade"]}"+
  "Email: ${content[index]["email"]}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////////////
      appBar: AppBar(
        title: Icon(
          Icons.abc,
          size: 50
        ),
        centerTitle: true,
      ),
      ///////////////////////////////////
      drawer: Drawer(),
      ///////////////////////////////////
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/dados.json"),
        builder: (context, snapshot) {
          var content = json.decode(snapshot.data.toString());
          return Column(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text(
                        content[index]["nome"]
                      ),
                      subtitle: Text(
                        content[index]["idade"] + " anos"
                      ),
                      trailing: Text(
                        content[index]["email"]
                      ),
                      onTap: (){},
                    );
                  },
                ),
              ),

              Container(
                child: Text(dadosClick),
              )
            ],
          );
        },
      ),
    );
  }
}