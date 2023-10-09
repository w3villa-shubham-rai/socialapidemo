import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:socialmedia_page/model/socialmediapage/social_media_model_form.dart';

class Comentcoustomwidget extends StatelessWidget {
  final List<PostComment>? comments;

  const Comentcoustomwidget({
    Key? key,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: comments?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          final comment = comments?[index];
          final userName = comment?.fullName ?? "";
          final commentDate = comment?.date ?? "";
          final commentContent = Html(
            data: comment?.content ?? "",
          ).data ?? "";


          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-250nw-1714666150.jpg'),
                        radius: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              userName,
                              style: TextStyle(
                                color: Color(0xFF40518A),
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F4FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                     commentContent,
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      commentDate,
                                      style: TextStyle(
                                        color: Color(0xFF9F9F9F),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}




 // return Container(
  //     height: 300, // Set a finite height here or adjust it as needed
  //     child: CustomScrollView(
  //       slivers: <Widget>[
  //         SliverList(
  //           delegate: SliverChildBuilderDelegate(
  //             (BuildContext context, int index) {
  //               final comment = comments?[index];
  //               int commentsLength = comments?.length ?? 0;
  //               print(commentsLength);
  //               return ListTile(
  //                 title: Text(comment?.fullName ?? ""),
  //                 subtitle: Html(data: comment?.content ?? ""),
  //               );
  //             },
  //             childCount: comments?.length ?? 0,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );

// Padding(
//       padding: const EdgeInsets.only(top: 20),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(bottom: 30),
//                 child: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-250nw-1714666150.jpg'),
//                   radius: 15,
//                 ),
//               ),
//               const SizedBox(
//                 width: 8,
//               ),
//               Expanded(
//                 flex: 4,
//                 child: Column(
//                   children: [
//                     const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Rajan Tiwari',
//                           style: TextStyle(
//                               color: Color(0xFF40518A),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w900),
//                         )),
//                     Container(
//                       decoration: BoxDecoration(
//                           color: const Color(0xFFF0F4FF),
//                           borderRadius: BorderRadius.circular(5)),
//                       child: const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Padding(
//                           padding: EdgeInsets.all(3.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Happy Birthday @Sandeep Tomer',
//                                 style: TextStyle(
//                                     color: Color(0xFF000000),
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               Text(
//                                 'Thursday,13 jul 2023',
//                                 style: TextStyle(
//                                     color: Color(0xFF9F9F9F),
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
  


 

  // children: comments?.map((comment) {
        //   return Padding(
        //     padding: const EdgeInsets.only(bottom: 8.0),
        //     child: Row(
        //       children: [
        //         const CircleAvatar(                 
        //           radius: 15,
        //         ),
        //         const SizedBox(
        //           width: 8,
        //         ),
        //         Expanded(
        //           flex: 4,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(
        //                 comment.fullName.toString(),
        //                 style: const TextStyle(
        //                   color: Color(0xFF40518A),
        //                   fontSize: 14,
        //                   fontWeight: FontWeight.w900,
        //                 ),
        //               ),
        //               Html(
        //                 data: comment.content, 
        //                 style: {
        //                   'body': Style(
        //                     color: Colors.black,
        //                     fontSize: FontSize(16),
        //                   ),
        //                 },
        //               ),
        //               Text(
        //                 comment.date.toString(),
        //                 style: const TextStyle(
        //                   color: Color(0xFF9F9F9F),
        //                   fontSize: 12,
        //                   fontWeight: FontWeight.w500,
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   );
        // }).toList() ?? [],