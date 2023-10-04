import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:socialmedia_page/components/likecommentcoustombtn.dart';
import 'package:socialmedia_page/components/sharethouthcoustombtn.dart';
import 'package:socialmedia_page/model/userpostmodel.dart';
import 'package:socialmedia_page/model/userstorymodel.dart';
import 'package:socialmedia_page/view_model/controller/social_view_model.dart';

class SocialMedaiaPage extends StatefulWidget {
  const SocialMedaiaPage({super.key});
  @override
  State<SocialMedaiaPage> createState() => _SocialMedaiaPageState();
}

class _SocialMedaiaPageState extends State<SocialMedaiaPage> {
  final SocialController socialController = Get.put(SocialController());

  @override
  void initState() {
    super.initState();
    socialController.fetchUserList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return 
     Scaffold(
      body:Obx(
        () {
          if (socialController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (socialController.fetchedData.isEmpty) {
            return Center(
              child: Text('No data available'),
            );
          } else {
            return ListView.builder(
              itemCount: socialController.fetchedData.length,
              itemBuilder: (context, index) {
                final item = socialController.fetchedData[index];
                return ListTile(
                  title: Text('ID: ${item.id.toString()}'),
                  subtitle: Text(
                    'Total Comments: ${item.totalComments.toString()} Total Likes: ${item.totalLikes.toString()}',
                  ),
                );
              },
            );
          }
        },
      ),
    );
    
  }
}



Widget getFirstItem() {
  return Column(
    children: [
      // textpart of view all
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upcoming Event",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "View All",
              style: TextStyle(color: Color(0xFF2E58E6), fontSize: 15),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 900,
        height: 122.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: UserStory(
                storyuser: storylist[index],
              ),
            );
          },
          itemCount: storylist.length,
        ),
      ),

      PostHereHeading(),
      ShareThought(),
      const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Divider(
          indent: 60,
          endIndent: 60,
          color: Color.fromARGB(255, 223, 221, 221),
        ),
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget UserStory({required UserStorymodel storyuser}) {
  return Container(
    width: 150,
    height: 122.36,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      border: Border.all(color: const Color(0xFF3658E6)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xFFE6AD2E),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(storyuser.storyuserimage),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26, right: 10),
                    child: SizedBox(
                        height: 25,
                        width: 25,
                        child: SvgPicture.asset(storyuser.storyocusionimage)),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  storyuser.storyusername,
                  style: const TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  storyuser.storyocusionname,
                  style: const TextStyle(
                      color: Color(0xFF8B8B8B),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Positioned(
            right: 1,
            child: Container(
              width: 57,
              height: 27,
              decoration: const BoxDecoration(
                  color: Color(0xFF2E58E6),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

// post here section Start

// ignore: non_constant_identifier_names
Widget PostHereHeading() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 1,
                  color: const Color.fromARGB(255, 219, 218, 218),
                )),
            const Expanded(
                flex: 4,
                child: SizedBox(
                  height: 30,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Post Here',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                )),
            Expanded(
                flex: 2,
                child: Container(
                    height: 1, color: const Color.fromARGB(255, 219, 218, 218)))
          ],
        )
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget ShareThought() {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(227, 217, 217, 218),
            blurRadius: 14.0,
          )
        ]),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/597958694/photo/young-adult-male-student-in-the-lobby-of-a-university.jpg?s=612x612&w=0&k=20&c=QaNEzmcKrLJzmwOcu2lgwm1B7rm3Ouq2McYYdmoMGpU='),
                radius: 15,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xFFF4F4F4),
                  ),
                  child: const TextField(
                    textAlignVertical:
                        TextAlignVertical.center, // Center the text vertically
                    decoration: InputDecoration(
                      suffixIcon: Text(
                        "😊",
                      ),
                      border: InputBorder.none,
                      hintText: 'Share a thought!',
                      suffixIconConstraints:
                          BoxConstraints.expand(width: 30, height: 25),
                      hintStyle: TextStyle(
                        color: Color(0xFF797272),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: sharethoughtbtn(btnname: 'Photo/image'),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: sharethoughtbtn(btnname: 'Survey'),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(flex: 1, child: sharethoughtbtn(btnname: 'Feelings')),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

// social media main part start

// ignore: non_constant_identifier_names
Widget UserPostContentSection({required UserPostmodelDetail userpostsection}) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(227, 217, 217, 218),
            blurRadius: 14.0,
          )
        ]),
    child: Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(userpostsection.userpostimg),
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userpostsection.userpostname,
                        style: const TextStyle(
                            color: Color(0xFF19295C),
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/globe.svg',
                            width: 10,
                            height: 10,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '09:37 AM',
                            style: TextStyle(
                                color: Color(0xFFBABDC9), fontSize: 12),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                userpostsection.userpoststatusDescription,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Container(
              height: 245,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(userpostsection.usermainpostedimg),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  likecommentcoustombtn(
                    likecommentlogoPath: 'assets/images/like.svg',
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  likecommentcoustombtn(
                    likecommentlogoPath: 'assets/images/comment.svg',
                  ),
                ],
              ),
              SizedBox(
                  child: Text(
                '${userpostsection.numberofcomments} Comments ${userpostsection.numberofLikes} Likes',
                style: const TextStyle(
                  color: Color(0xFF747EA0),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ))
            ],
          ),
          Padding(
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
                          const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Rajan Tiwari',
                                style: TextStyle(
                                    color: Color(0xFF40518A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900),
                              )),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFF0F4FF),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Happy Birthday @Sandeep Tomer',
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      'Thursday,13 jul 2023',
                                      style: TextStyle(
                                          color: Color(0xFF9F9F9F),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
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
          ),
        ],
      ),
    ),
  );
}
