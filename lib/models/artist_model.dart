import 'package:music_app/models/song_model.dart';

class Artist {
  final String name;
  final String imageUrl;
  final String song;
  final List<Song> songs;

  Artist({this.name, this.imageUrl, this.song, this.songs});
}

List<Artist> artists = [
  Artist(
      name: 'Amr Diab',
      imageUrl: 'assets/images/amr_diab.jpg',
      song: '7bebti',
      songs: [
        Song(
            name: 'shukran',
            imageUrl: 'assets/images/amr_diab.jpg',
            plays: '1.1M'),
        Song(
            name: 'Odam Mirayitha',
            imageUrl: 'assets/images/amr_diab.jpg',
            plays: '3.2M'),
        Song(
            name: 'shukran',
            imageUrl: 'assets/images/amr_diab.jpg',
            plays: '1.1M'),
        Song(
            name: 'Odam Mirayitha',
            imageUrl: 'assets/images/amr_diab.jpg',
            plays: '3.2M'),

      ]),
  Artist(
      name: 'Tamer Hosney',
      imageUrl: 'assets/images/tamer_hosny.jpg',
      song: 'Oumri Ebtada'),
  Artist(
      name: 'Nancy Ajram',
      imageUrl: 'assets/images/nancy_ajram.jpg',
      song: 'Ah w Nos'),
  Artist(name: 'Elissa', imageUrl: 'assets/images/elissa.jpg', song: 'Karahni'),
];
