import 'package:flutter/material.dart';
import 'package:flutter_application_15/pages/floating.dart';
import 'package:flutter_application_15/pages/location.dart';
import 'package:flutter_application_15/views/Newslist.dart';
import 'package:flutter_application_15/views/search.dart';

import 'package:get/get.dart';

class NewsFeed extends StatefulWidget {
  NewsFeed({super.key});
  //final AppNewsController controller = Get.put(AppNewsController());

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 55, 95),
        toolbarHeight: 70,
        title: Text("MyNEWS"),
        actions: [
          Location(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: const [
            SizedBox(
              height: 3,
            ),
            Search(),
            NewsList(),
          ],
        ),
      ),
      floatingActionButton: Floating(),
    );
  }
}
