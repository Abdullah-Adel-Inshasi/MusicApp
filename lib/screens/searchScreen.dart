import 'package:flutter/material.dart';
import 'package:music_app/models/artist_model.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> categories = ['All', 'Podcasts', 'Hip-Hop', 'Pop'];

  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(keyboardDismissBehavior:ScrollViewKeyboardDismissBehavior.onDrag ,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.06),
                  borderRadius: BorderRadius.circular(25)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for songs, albums, podcasts etc...',
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              Artist artist = artists[index];
              return ListTile(
                trailing: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  artist.song,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF2D55),
                  ),
                ),
                subtitle: Text(
                  artist.name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              );
            },
            childCount: artists.length,
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
                        artist.song,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
