import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(
      color1: Color(0xffAECF9E),
      color2: Color(0xff966488),
      color3: Color(0xffA58BB0),
      sound1: 'note1.wav',
      sound2: 'note2.wav',
      sound3: 'note3.wav',
    ),
    TuneModel(
      color1: Color(0xff8CA182),
      color2: Color(0xff9F927F),
      color3: Color(0xffAECF9E),
      sound1: 'note4.wav',
      sound2: 'note5.wav',
      sound3: 'note6.wav',
    ),
    TuneModel(
      color1: Color(0xff9F845D),
      color2: Color(0xffA58BB0),
      color3: Color(0xff7D7185),
      sound1: 'note7.wav',
      sound2: 'note1.wav',
      sound3: 'note2.wav',
    ),
    TuneModel(
      color1: Color(0xff9F927F),
      color2: Color(0xffBFAEE4),
      color3: Color(0xffAC9876),
      sound1: 'note3.wav',
      sound2: 'note4.wav',
      sound3: 'note5.wav',
    ),
    TuneModel(
      color1: Color(0xffBFAEE4),
      color2: Color(0xff8CA182),
      color3: Color(0xffA58BB0),
      sound1: 'note6.wav',
      sound2: 'note7.wav',
      sound3: 'note1.wav',
    ),
    TuneModel(
      color1: Color(0xff7D7185),
      color2: Color(0xff9F845D),
      color3: Color(0xff966488),
      sound1: 'note2.wav',
      sound2: 'note5.wav',
      sound3: 'note4.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF0D1),
      appBar: AppBar(
        backgroundColor: Color(0xff253238),
        centerTitle: true,
        title: Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: tunes.map((tune) => TuneItem(tune: tune)).toList(),
        ),
      ),
    );
  }
}
