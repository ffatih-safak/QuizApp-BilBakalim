import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UygulamaHakkinda extends StatefulWidget {
  //
  UygulamaHakkinda({Key key}) : super(key: key);
  final String title = 'Bize Puan Ver';

  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();
}

class _LaunchUrlDemoState extends State<UygulamaHakkinda> {
  //
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://play.google.com/store?hl=tr';

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "Bize Puan Ver",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Bizi Google PLAY ' de değerlendir. İstek ve Öneriler için bizler ile iletişim sayfasından iletişime geçebilirsiniz. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/gp.png',
                fit: BoxFit.contain,
                width: 100,
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Center(
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: const Text(
                      'Google Play',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _launched = _launchUniversalLinkIos(
                          'https://play.google.com/store?hl=tr');
                    });
                  },
                ),
              ),
            ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Yönlendirilmek için Googel PLAY  Butonuna Basınız. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
