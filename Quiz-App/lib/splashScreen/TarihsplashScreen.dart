import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';
import 'package:login_page_day_23/sorular/Genelsorular.dart';
import 'package:login_page_day_23/sorular/tarihSorulari.dart';

class TarihSplashScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TarihSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TarihSorulari()));
    });
  }

  @override
  int _state = 0;
  Timer _timer;
  int _start = 5;

  void startTimer() {
    if (_timer != null) {
    } else {
      _timer = new Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => setState(
          () {
            if (_start < 1) {
              timer.cancel();
            } else {
              _start = _start - 1;
            }
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
     return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff622f74),
              gradient: LinearGradient(
                colors: [new Color(0xffc471ed), new Color(0xff12c2e9)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                child: Icon(
                  Icons.book_rounded,
                  color: new Color(0xff0F2027),
                  size: 50.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
              ),
              Text(
                "     Bilim Soruları Hazır\n\n\nSoruların Başlamasına $_start ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
                
              ),
            ],
          ),
        ],
      ),
    );
  }
}