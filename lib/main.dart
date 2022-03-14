import 'package:flutter/material.dart';

void main() {
  runApp(const Msginc());
}

class Msginc extends StatelessWidget {
  const Msginc({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Msginc'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Container(
                  width: 90,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('images/og_logo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
