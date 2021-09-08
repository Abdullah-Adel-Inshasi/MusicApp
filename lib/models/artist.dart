import 'song_model.dart';

class Artist{
  final String name;
  final String imageUrl;
  final Song topSong;
  final List<Song> songs;

  Artist({this.name,this.imageUrl,this.topSong,this.songs});
}