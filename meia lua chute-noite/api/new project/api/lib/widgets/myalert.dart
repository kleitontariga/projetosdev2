import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlert extends StatefulWidget {
  const MyAlert({super.key});

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Caixa de diálogo",
        style: GoogleFonts.beauRivage(),
      ),
      content: Text(
        "Este é um exemplo de AlertDialog: a humanidade sabia que não podia mudar a sociedade, então ao invés de refletir em si mesmos, eles culparam os fordos"
      ),
      actions: [
        IconButton(
          onPressed: (){},
         icon: Icon(Icons.fingerprint)
         )
      ],
    );
  }
}