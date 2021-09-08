import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';
import 'package:music_app/screens/artist_screen.dart';
import 'package:music_app/screens/searchScreen.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Library',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          children: artists
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    return Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ArtistScreen(artist: e,)));
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 7.5, vertical: 7.5),
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2, 2),
                            blurRadius: 6.0)
                      ],
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                            tag: e.imageUrl,
                            child: Image.asset(
                              e.imageUrl,
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Text(
                            e.name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                backgroundColor: Colors.grey.withOpacity(0.5),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
