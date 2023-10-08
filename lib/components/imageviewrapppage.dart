import 'package:flutter/material.dart';
import 'package:socialmedia_page/components/imagegallerypage.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';

class UserviewPage extends StatefulWidget {
  final List<WallPost>? wallPostList;

  const UserviewPage({Key? key, required this.wallPostList}) : super(key: key);

  @override
  State<UserviewPage> createState() => _UserviewPageState();
}

class _UserviewPageState extends State<UserviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User View Page'),
      ),
      body: ListView.builder(
        itemCount: widget.wallPostList?.length ?? 0,
        itemBuilder: (context, index) {
          String imageUrl = widget.wallPostList![index].imageUrl ?? '';
          return GestureDetector(
            onTap: () {
              // Navigate to a new page to display all images in a horizontal view.
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ImageGalleryPage(
                    wallPostList: widget.wallPostList,
                    initialIndex: index,
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}