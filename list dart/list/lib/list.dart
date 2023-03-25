import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:list/myjson.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => MyListState();
}

class MyListState extends State<MyList> {
  String brasil =
      "https://seuladogeek.com.br/wp-content/uploads/2022/03/download-bandeira-do-brasil-vetor-e-png-800x450.png";
  String argentina =
      "https://seuladogeek.com.br/wp-content/uploads/2022/03/bandeira-da-argentina-vetor-e-png.png";
  String nepal =
      "";
  String Colombia =
      "";
  String zimbabwe = "";
  late String imagemGrande = brasil;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Listagem JSON"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>MyJson())
                );


              },
            ),
          ],
        )



      )
      
        appBar: AppBar(
          title: Text("Lista"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Brasil"),
              subtitle: Text("América do Sul"),
              trailing: Icon(Icons.flag_circle),
              leading: Image(image: NetworkImage(brasil)),
              onTap: () {},
              setState(() {
                imagemGrande = brasil
            ),

            ),
            
            ListTile(
              title: Text("Argentina"),
              subtitle: Text("América do Sul"),
              trailing: Icon(Icons.flag_circle),
              leading: Image(image: NetworkImage(argentina)),
            ),
            ListTile(
              title: Text("Nepal"),
              subtitle: Text("Ásia"),
              trailing: Icon(Icons.flag_circle),
              leading: Image(image: NetworkImage(nepal)),
            ),
            ListTile(
              title: Text("Colômbia"),
              subtitle: Text("América do Sul"),
              trailing: Icon(Icons.flag_circle),
              leading: Image(image: NetworkImage(Colombia)),
            ),
            ListTile(
              title: Text("Zimbabwe"),
              subtitle: Text("África"),
              trailing: Icon(Icons.flag_circle),
              leading: Image(image: NetworkImage(zimbabwe)),
            ),
            Container(child: Image(image: NetworkImage(brasil)))
          ]

        ));
    
  }
}
