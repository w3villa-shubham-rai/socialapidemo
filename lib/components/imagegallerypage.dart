import 'package:flutter/material.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';

class ImageGalleryPage extends StatefulWidget {
  final List<WallPost>? wallPostList;
  final int initialIndex;

  const ImageGalleryPage({
    Key? key,
    required this.wallPostList,
    required this.initialIndex,
  }) : super(key: key);

  @override
  _ImageGalleryPageState createState() => _ImageGalleryPageState();
}

class _ImageGalleryPageState extends State<ImageGalleryPage> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.wallPostList?.length ?? 0,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          String imageUrl = widget.wallPostList![index].imageUrl ?? '';
          return Center(
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill, 
            ),
          );
        },
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       IconButton(
      //         onPressed: () {
      //           if (_currentIndex > 0) {
      //             _pageController.previousPage(
      //               duration: Duration(milliseconds: 300),
      //               curve: Curves.easeInOut,
      //             );
      //           }
      //         },
      //         icon: Icon(Icons.arrow_back),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           if (_currentIndex < (widget.wallPostList!.length - 1)) {
      //             _pageController.nextPage(
      //               duration: Duration(milliseconds: 300),
      //               curve: Curves.easeInOut,
      //             );
      //           }
      //         },
      //         icon: Icon(Icons.arrow_forward),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}