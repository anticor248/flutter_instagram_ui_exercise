import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_exercise/utils/bubble_stories.dart';
import 'package:instagram_ui_exercise/utils/user_post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List people = [
    'msgox',
    'tunahan',
    'jeffbezos',
    'mark',
    'billgates',
    'warrenbuffet',
    'mark',
    'billgates',
    'warrenbuffet',
    'mark',
    'billgates',
    'warrenbuffet',
    'mark',
    'billgates',
    'warrenbuffet'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark, // status bar icons' color
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(Icons.add_circle_outline),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(Icons.favorite_outline),
                ),
                Icon(Icons.messenger_outline),
              ],
            )
          ],
        ),
      ),

      //TODO BODY

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO Stories Here
          Container(
              height: 116,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(storiesName: people[index]);
                  })),

          //TODO Posts Here

          UserPost(),
        ],
      ),
    );
  }
}
