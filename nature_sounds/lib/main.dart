
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NatureSounds());
}

class NatureSounds extends StatelessWidget {

  void playSound(String soundName){
    final player = AudioCache();
    player.play('$soundName.mp3');
  }

  Expanded soundCard ({String imageName, String soundName, String title}){
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(8.0),
        child: FlatButton(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/$imageName.png'),
              ),
              Text('$title',
              style: TextStyle(
                fontFamily: 'Palanquin',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
              ),
            ],
          ),
          onPressed: (){
            playSound(soundName);
          },
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.yellow[700],
          appBar: AppBar(
            backgroundColor: Colors.yellow[600],
          title: Text(
              'Nature Sounds',
            style: TextStyle(
              fontFamily: 'palanquin',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
          body: SingleChildScrollView(
            child: Column(

              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        soundCard(imageName: 'heavyrain', soundName: 'thunderrain', title: 'Rain with Thunder'),
                        soundCard(imageName: 'rainumbrella', soundName: 'rainumbrella', title: 'Rain on Umbrella'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        soundCard(imageName: 'heavywave', soundName: 'heavywave', title: 'Heavy Ocean Wave'),
                        soundCard(imageName: 'lightwave', soundName: 'lightwave', title: 'Light Ocean Wave'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        soundCard(imageName: 'birdcrip', soundName: 'birdcrip', title: 'Birds Chirping'),
                        soundCard(imageName: 'horsegallop', soundName: 'horsegallop', title: 'Horse Galloping'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        soundCard(imageName: 'forest', soundName: 'forest', title: 'Forest'),
                        soundCard(imageName: 'summer', soundName: 'summer', title: 'Summer Jungle'),
                      ],
                    ),
                  ],
                ),


              ],
            ),
          ),
        )
    );
  }
}
