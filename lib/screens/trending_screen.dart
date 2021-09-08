import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';

class TrendingScreen extends StatefulWidget {
  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  List<String> categories = ['All', 'Podcasts', 'Hip-Hop', 'Pop'];

  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 60, 0, 0),
            sliver: SliverToBoxAdapter(
              child: Text('Trending',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            )),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 24),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: ListView.builder(
                  itemCount: categories.length,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    String category = categories[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedCategory = index;
                        });
                      },
                      child: Container(
                        width: 115,
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: categories[_selectedCategory] == category
                              ? Color(0xFFFF2D55)
                              : Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: category == categories[_selectedCategory]
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 22, horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Top Trending - 2019',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              Artist artist = artists[index];
              return Container(
                height: 115,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          height: 115,
                          width: 115,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              artist.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 6.0)
                              ]),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 25,
                              child: Center(
                                child: Text(
                                  '# ${index + 1}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFFF2D55),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              artist.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text(
                              artist.song,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF838383),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  size: 15,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                SizedBox(width: 5),
                                Text('2.3M Plays'),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                    )
                  ],
                ),
              );
            }, childCount: artists.length),
          ),
        ),
      ],
    );
  }
}
