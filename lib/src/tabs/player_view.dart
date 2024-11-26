import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayerView extends StatelessWidget {
  const PlayerView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}