import 'package:flutter/material.dart';
import 'package:music_app/models/artist.dart';
import 'package:music_app/models/song_model.dart';

class MusicPlayer extends StatefulWidget {

  final Artist artist;

  MusicPlayer({this.artist});
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(28, 65, 28, 28),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_down_sharp),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
