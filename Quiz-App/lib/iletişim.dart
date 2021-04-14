
import 'package:flutter/material.dart';

import 'AnaSayfa.dart';

class Iletisim extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('İletişim'),
            actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Air it',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              }),
        ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/iletisim.png'),
              Padding(
                padding: const EdgeInsets.all(15.0),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Bizimle İletişime Geç",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black45)),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("E-POSTA : ffatihsafak@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black45)),
              ),
             
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Google Play Geliştrici  \n  Furkan Fatih ŞAFAK  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black45)),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.pink,
                      size: 24.0,
                      
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.phone_android_sharp,
                      color: Colors.blue,
                      size: 36.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
