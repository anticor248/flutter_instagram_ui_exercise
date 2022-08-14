import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/bubble_stories.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness:
                  Brightness.dark, // status bar icons' color
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'msgox',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.add_circle_outline),
                    ),
                    Icon(Icons.menu),
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                //Profile Picture, Posts, Followers and Following info
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey, shape: BoxShape.circle),
                          height: 96,
                          width: 96,
                        ),
                        //Posts
                        Column(
                          children: [
                            Text(
                              '112',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        //Followers
                        Column(
                          children: [
                            Text(
                              '13.2M',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                            Text('Followers', style: TextStyle(fontSize: 16))
                          ],
                        ),
                        //Following
                        Column(
                          children: [
                            Text(
                              '355',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900, fontSize: 18),
                            ),
                            Text('Following', style: TextStyle(fontSize: 16))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Göktuğ ULAŞ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'Flutter UI Developer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    //Edit Profile and Follow User Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 96),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.person_add_alt_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    //Profile Page Own Stories
                    Container(
                      height: 116,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return Center(
                              child: BubbleStories(storiesName: 'msgox'));
                        },
                      ),
                    ),
                    TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(Icons.grid_3x3_outlined),
                        ),
                        Tab(
                          icon: Icon(Icons.play_circle_outline_rounded),
                        ),
                        Tab(
                          icon: Icon(Icons.person_outline),
                        ),
                      ],
                    ),

                    //TODO : Add TabBarView
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
