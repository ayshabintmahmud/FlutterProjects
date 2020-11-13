import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[800],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/A.jpg'),
              ),
              Text('Aysha Bint Mahmud',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('WEB/FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.yellow[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.yellow[200],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.open_in_browser,
                    color: Colors.green[900],
                  ),
                  title: Text('ayshabintmahmud.com',
                    style:TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person_search,
                    color: Colors.green[900],
                  ),
                  title: Text('@ayshabintmahmud',
                    style:TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.green[900],
                  ),
                  title: Text('aysherbintmahmud@gmail.com',
                    style:TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 16.0,
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }
}

