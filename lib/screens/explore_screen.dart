import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';


class ExploreScreen extends StatelessWidget {
  List<String> moods = ['Pop', 'Hip-Hop', 'Rap', 'Indie', 'Country'];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 60, 0, 0),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Explore',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 21),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Recently Played',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: artists.length,
              itemBuilder: (BuildContext context, int index) {
                Artist artist = artists[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            artist.imageUrl,
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        artist.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 21),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Recommended for you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: artists.length,
              itemBuilder: (BuildContext context, int index) {
                Artist artist = artists[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            artist.imageUrl,
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(artist.name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      Text(
                        artist.song,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 21),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Get Inspired!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: artists.length,
              itemBuilder: (BuildContext context, int index) {
                Artist artist = artists[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            artist.imageUrl,
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(artist.name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 21),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Popular Artists',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: artists.length,
              itemBuilder: (BuildContext context, int index) {
                Artist artist = artists[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            artist.imageUrl,
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        artist.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 20, 16, 21),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Genres & Moods',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            height: 80,
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: moods.length,
                itemBuilder: (BuildContext context, int index) {
                  String mood = moods[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFF2D55)),
                    child: Center(
                      child: Text(
                        mood,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
