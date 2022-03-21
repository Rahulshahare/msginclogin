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
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailCont = TextEditingController();
  final passCont = TextEditingController();

  //@override
  void dispose() {
    emailCont.dispose();
    passCont.dispose();
    //super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 20, left: 15, right: 15),
              child: TextField(
                controller: emailCont,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 30, left: 15, right: 15),
              child: TextField(
                controller: passCont,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  //TODO ON LOGIN

                  print(
                      "Email is ${emailCont.text} and Password is ${passCont.text}");
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
