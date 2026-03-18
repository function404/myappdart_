import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(CartaoVisita());
}

class CartaoVisita extends StatelessWidget {
  const CartaoVisita({super.key});

  Future<void> _openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Não foi possível abrir o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/me.png'), 
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: Text(
                    'Lincoln Novais Mezzalira',
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'Analista de Sistemas | Desenvolvedor Mobile e WEB',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.indigo[100],
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.indigo[100],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.indigo[900]),
                          SizedBox(width: 15.0),
                          Text(
                            '+55 47 99965-3584',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0), 
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.envelope, color: Colors.indigo[900]),
                          SizedBox(width: 15.0),
                          Text(
                            'lincolnnovais15a@gmail.com',
                            style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.github, color: Colors.indigo[900]),
                          TextButton(
                            onPressed: () {
                              _openLink('https://github.com/function404');
                            },
                            child: Text(
                              'github.com/function404',
                              style: TextStyle(
                                color: Colors.indigo[900],
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.instagram, color: Colors.indigo[900]),
                          TextButton(
                            onPressed: () {
                              _openLink('https://instagram.com/lincoln.mezzalira');
                            },
                            child: Text(
                              'instagram.com/lincoln.mezzalira',
                              style: TextStyle(
                                color: Colors.indigo[900],
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.linkedin, color: Colors.indigo[900]),
                          TextButton(
                            onPressed: () {
                              _openLink('https://www.linkedin.com/in/lincolnnm/');
                            },
                            child: Text(
                              'linkedin.com/in/lincolnnm/',
                              style: TextStyle(
                                color: Colors.indigo[900],
                                fontSize: 16.0,
                                decoration: TextDecoration.underline,
                              ),
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
        ),
      ),
    );
  }
}