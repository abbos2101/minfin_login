import 'package:minfin_login/minfin_login.dart';
import 'package:flutter/material.dart';

void ensureInitialized() {
  MinfinLogin.ensureInitialized(
    builderUzb: (context) {
      return const Scaffold(body: Center(child: Text("UZB")));
    },
    onTestLogin: (login, password) {
      print("Login: $login, Password: $password");
    },
  );
}

void main() async {
  ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minfin Login',
      debugShowCheckedModeBanner: false,
      home: MinfinLogin.getInstance(),
    );
  }
}
