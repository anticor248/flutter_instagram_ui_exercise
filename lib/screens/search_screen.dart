import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_exercise/utils/explore_grid.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
        //Search Bar
        title: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.grey.shade300,
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 12,
                ),
                Text('Search'),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGridView(),
    );
  }
}
