import 'package:flutter/material.dart';
import 'package:musicplayer/music/provider/music_provider.dart';
import 'package:musicplayer/music/view/music.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Music_Player(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => MusicPlayer_Screen(),
        },
      ),
    ),
  );
}
