import 'package:flutter/material.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';

class Socialpagegrid extends StatelessWidget {
  const Socialpagegrid({super.key, required this.list});
  final List<WallPost>? list;
  @override
  Widget build(BuildContext context) {
    final size = list![0].children!.length.toInt();
    final imageUrl = list![0].imageUrl;
    final imageurlone = list![1].imageUrl;
    final imageurltwo = list![2].imageUrl;
    final imageurlthree = list![3].imageUrl;
    return Container(
      height: 300,
      width: 350,
      // color: Colors.amber,
      // decoration: BoxDecoration(color: Colors.redAccent),
      // constraints: const BoxConstraints(
      //   maxHeight: 200,
      //   minHeight: 50,
      // ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(height: 5),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Image.network(
                      imageUrl.toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 20, 17, 203),
                    child: Image.network(
                      imageurlone.toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 21, 189, 192),
                    child: Image.network(
                      imageurltwo.toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Image.network(
                      imageurlthree.toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
