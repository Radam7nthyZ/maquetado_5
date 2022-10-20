import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(40),
        ),
        color: Color.fromARGB(255, 145, 220, 230),
        margin: EdgeInsets.only(
          right: 10.0,
          left: 10.0,
          bottom: 10.0,
          top: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListBody(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/007/642/379/non_2x/cowboy-hat-line-pop-art-potrait-logo-colorful-design-with-dark-background-abstract-illustration-vector.jpg"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        elevation: 15,
                        margin: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text("Email addres"),
                            ListTile(
                              leading: Icon(Icons.mail),
                              title: Text("Username@gmail.com"),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 15,
                        margin: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Text("Password"),
                            ListTile(
                              leading: Icon(Icons.lock),
                              title: Text("***************"),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromARGB(255, 21, 22, 72), width: 3),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        color: Color.fromARGB(255, 21, 22, 72),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                            ),
                            ListTile(
                              title: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Singup"),
                            Text("Forgot Password?"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
