import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/AddressSearchPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Image.asset("assets/odlogo.png"),
          ),
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddressSearchPage()),
    );
  },
  child: Text("Entrar"),
),
          ),
        ],
      ),
    );
  }
}
