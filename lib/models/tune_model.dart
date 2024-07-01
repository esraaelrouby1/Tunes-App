import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
//  final Color color;
  final String sound1;
  final String sound2;
  final String sound3;
  final Color color1;
  final Color color2;
  final Color color3;

  const TuneModel({
    required this.color1,
    required this.color2,
    required this.color3,
    required this.sound1,
    required this.sound2,
    required this.sound3,
  });

  playSound(String sound) {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
