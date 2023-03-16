import 'package:flutter/material.dart';
import 'package:musicplayer/music/provider/music_provider.dart';
import 'package:provider/provider.dart';

class MusicPlayer_Screen extends StatefulWidget {
  const MusicPlayer_Screen({Key? key}) : super(key: key);

  @override
  State<MusicPlayer_Screen> createState() => _MusicPlayer_ScreenState();
}

class _MusicPlayer_ScreenState extends State<MusicPlayer_Screen> {
  Music_Player? music_playerfalse;
  Music_Player? music_playertrue;

  @override
  void initState() {
    super.initState();
    Provider.of<Music_Player>(context,listen: false).initAudio();
  }

  @override
  Widget build(BuildContext context) {
    music_playertrue = Provider.of<Music_Player>(context, listen: true);
    music_playerfalse = Provider.of<Music_Player>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/sidhu.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black54,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/sidhu.jpg",
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
                Slider(
                  value: 0,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  inactiveColor: Colors.white38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        music_playerfalse!.start();
                      },
                      icon: Icon(
                        Icons.stop_circle,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        music_playerfalse!.Astop();
                      },
                      icon: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_down,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
