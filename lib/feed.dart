import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'story.dart';
import 'post.dart';

class Feed extends StatelessWidget {
  final List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Adella"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Ralph"),
    Story(
        "https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Dale"),
    Story(
        "https://images.pexels.com/photos/1372134/pexels-photo-1372134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Reanna"),
    Story(
        "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Adrianna"),
    Story(
        "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Rosalyn"),
    Story(
        "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Hudson"),
    Story(
        "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Dessie"),
    Story(
        "https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
        "Valerie"),
    Story(
        "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Orion"),
    Story(
        "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Clara"),
    Story(
        "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Trudie"),
    Story(
        "https://images.pexels.com/photos/324658/pexels-photo-324658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Halie"),
    Story(
        "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
        "Marcelina"),
  ];

  final List<Post> posts = [
    Post(
        username: "Emerald",
        userImage:
            'https://s3.amazonaws.com/uifaces/faces/twitter/nicklacke/128.jpg',
        postImage:
            "https://images.pexels.com/photos/313782/pexels-photo-313782.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Ut rerum nam."),
    Post(
        username: "Millie",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/mymyboy/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1033729/pexels-photo-1033729.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Ut rerum nam."),
    Post(
        username: "Elfrieda",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/pierrestoffe/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Ut rerum nam."),
    Post(
        username: "Jordan",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/kinday/128.jpg",
        postImage:
            "https://images.pexels.com/photos/247376/pexels-photo-247376.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Ut rerum nam."),
    Post(
        username: "Milton",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/juangomezw/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Ut rerum nam."),
    Post(
        username: "Odell",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/commadelimited/128.jpg",
        postImage:
            "https://images.pexels.com/photos/691114/pexels-photo-691114.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        caption: "Ut rerum nam."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
      Divider(),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Stories',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Watch All',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: _stories.map((story) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 3,
                      color: Color(0xff8e44ad),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image(
                        image: NetworkImage(story.image),
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    story.name,
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Container(
                    color: Colors.white38,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                      image:
                                          NetworkImage(posts[index].userImage),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(posts[index].username),
                              ],
                            ),
                            IconButton(
                              icon: Icon(SimpleLineIcons.options),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        FadeInImage(
                          image: NetworkImage(posts[index].postImage),
                          placeholder: AssetImage("assets/placeholder.png"),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.heart_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(FontAwesome.comment_o),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Feather.send),
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FontAwesome.bookmark_o),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Liked by ",
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: "Nelle, ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: "Connie ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                                TextSpan(
                                    text: "and 1236 others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ))
                              ])),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5.0),
                          child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: posts[index].username,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                    text: ' ${posts[index].caption}',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )),
                              ])),
                        )
                      ],
                    ));
              },
            ),
          ))
    ])));
  }
}
