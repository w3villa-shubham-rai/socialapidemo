import 'package:flutter/material.dart';
import 'package:socialmedia_page/components/imageviewrapppage.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';

class Socialpagegrid extends StatelessWidget {
  final List<WallPost>? list;

  Socialpagegrid({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int listLength = list?.length ?? 0;

    if (listLength > 4) {
      int remainingImages = listLength - 4;
      String? imageUrl1 = list![0].imageUrl;
      String? imageUrl2 = list![1].imageUrl;
      String? imageUrl3 = list![2].imageUrl;
      String? imageUrl4 = list![3].imageUrl;
      if (imageUrl1 != null &&
          imageUrl2 != null &&
          imageUrl3 != null &&
          imageUrl4 != null) {
        return buildGridLayout(imageUrl1, imageUrl2, imageUrl3, imageUrl4,
            remainingImages, context,list);
      } else {
        return const Text("One or more Image URLs are null");
      }
      // return buildGridLayout();
    }
    // / for four image
    else if (listLength == 4) {
      String? imageUrl1 = list![0].imageUrl;
      String? imageUrl2 = list![1].imageUrl;
      String? imageUrl3 = list![2].imageUrl;
      String? imageUrl4 = list![3].imageUrl;
      if (imageUrl1 != null &&
          imageUrl2 != null &&
          imageUrl3 != null &&
          imageUrl4 != null) {
        return buildfourColorfulContainers(
            imageUrl1, imageUrl2, imageUrl3, imageUrl4,context,list);
      } else {
        return const Text("One or more Image URLs are null");
      }

      // return buildfourColorfulContainers();
    } else if (listLength == 1) {
      String? imageUrl1 = list![0].imageUrl;
      if (imageUrl1 != null) {
        return buildColorfulContainer(imageUrl1,context,list);
      } else {
        return const Text("One or more Image URLs are null");
      }
    } else if (listLength == 3) {
      String? imageUrl1 = list![0].imageUrl;
      String? imageUrl2 = list![1].imageUrl;
      String? imageUrl3 = list![2].imageUrl;
      if (imageUrl1 != null && imageUrl2 != null && imageUrl3 != null) {
        return buildThreeColorfulContainers(imageUrl1, imageUrl2, imageUrl3,context,list);
      } else {
        return const Text("One or more Image URLs are null");
      }
    } else if (listLength == 2) {
      String? imageUrl1 = list![0].imageUrl;
      String? imageUrl2 = list![1].imageUrl;
      if (imageUrl1 != null && imageUrl2 != null) {
        return buildtwoColorfulContainers(imageUrl1, imageUrl2,context,list);
      } else {
        return const Text("One or more Image URLs are null");
      }

      //  return buildtwoColorfulContainers();
    } else {
      return Visibility(
        visible: false,
        child: Container(),
      );
    }
  }

  Widget buildGridLayout(
    String imageUrl1,
    String imageUrl2,
    String imageUrl3,
    String imageUrl4,
    int remainingImages,
    BuildContext context,
     List<WallPost>? list,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserviewPage(wallPostList: list),
            ));
      },
      child: SizedBox(
        height: 300,
        width: 350,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const SizedBox(height: 5),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Image.network(
                        imageUrl1.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 20, 17, 203),
                      child: Image.network(
                        imageUrl2.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 21, 189, 192),
                      child: Image.network(
                        imageUrl3.toString(),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(imageUrl4.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              color: Colors.black.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  '+$remainingImages',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// image four

Widget buildfourColorfulContainers(
  String imageUrl1,
  String imageUrl2,
  String imageUrl3,
  String imageUrl4,
  BuildContext context,
   List<WallPost>? list,
) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserviewPage(wallPostList: list),
            ));
      },
    child: Container(
      height: 200,
      width: 350,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Image.network(
                imageUrl1.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 20, 17, 203),
              child: Image.network(
                imageUrl2.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 21, 189, 192),
              child: Image.network(
                imageUrl3.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 8, 242, 12),
              child: Image.network(
                imageUrl2.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildColorfulContainer(String imageUrl1,BuildContext context, List<WallPost>? list,) {
  return GestureDetector(
     onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserviewPage(wallPostList: list),
            ));
      },
    child: Container(
      height: 100,
      width: 100,
      color: Colors.green,
      child: Image.network(
        imageUrl1.toString(),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget buildtwoColorfulContainers(String imageUrl1, String imageUrl2,BuildContext context, List<WallPost>? list,) {
  return GestureDetector(
     onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserviewPage(wallPostList: list),
            ));
      },
    child: Container(
      height: 200,
      width: 350,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 38, 216, 7),
              child: Image.network(
                imageUrl1.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 226, 16, 234),
              child: Image.network(
                imageUrl1.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildThreeColorfulContainers(
  String imageUrl1,
  String imageUrl2,
  String imageUrl3,
  BuildContext context,
   List<WallPost>? list,

) {
  return GestureDetector(
     onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserviewPage(wallPostList: list),
            ));
      },
    child: Container(
      height: 200,
      width: 350,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Image.network(
                imageUrl1.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 20, 17, 203),
              child: Image.network(
                imageUrl2.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 21, 189, 192),
              child: Image.network(
                imageUrl3.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
