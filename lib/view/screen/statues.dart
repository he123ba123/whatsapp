import 'package:flutter/material.dart';
import 'package:nti/view/screen/chats.dart';

bool isArabic = true;

class statues extends StatelessWidget {
  const statues({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const chats()),
                      );
                    },
                    icon: const Icon(
                      Icons.chat,
                      color: Color.fromARGB(255, 3, 183, 45),
                    )),
                label: "chat",
                backgroundColor: Colors.black),
            const BottomNavigationBarItem(
                icon: Icon(Icons.update, color: Colors.white),
                label: "update",
                backgroundColor: Colors.black),
            const BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.white),
              label: "communities",
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.call, color: Colors.white), label: "calls"),
          ],
        ),
        backgroundColor: const Color.fromARGB(221, 14, 14, 14),
        appBar: AppBar(
          actions: [
            // const Padding(
            //     padding: EdgeInsets.all(10),
            //     child: IconButton(
            //       icon: Icon(Icons.language),
            //       color: Colors.white,
            //       onPressed: () {
            //         isArabic = !isArabic;

            //       },
            //     )),
            const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.camera_alt,
                  weight: 500,
                  size: 30,
                  color: Colors.white,
                )),
            const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.search,
                  weight: 500,
                  size: 27,
                  color: Colors.white,
                )),
            PopupMenuButton(
                iconColor: Colors.white,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(child: Text("مجموعة جديدة")),
                    const PopupMenuItem(child: Text("مجموعة جديدة")),
                    const PopupMenuItem(child: Text("مجموعة جديدة")),
                    const PopupMenuItem(child: Text("مجموعة جديدة")),
                  ];
                })
          ],
          backgroundColor: Colors.black87,
          title: const Text(
            "المستجدات",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.9),
          ),
        ),
        body: ListView.builder(
          //scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                // const Divider(
                //   thickness: 1,
                // ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: const Text("الحالة",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 115,
                        height: 175,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 111, 109, 109),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjk9ZnVHLvlJKay80hXEPCBZpYpxPKD8oG3A&s"),
                                fit: BoxFit.fill)),
                        padding: const EdgeInsets.all(10),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh_wPor4GKzfWP3JgdyYjIZiX-x0Jze5vGCA&s"),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(5),
                  width: double.infinity,
                  child: const Text("القنوات",
                      style: TextStyle(color: Colors.white, fontSize: 35)),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white10,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ذكر",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Text("اللهم اني أسألك علما نافعا  ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 123, 121, 121),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text("أمس",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQplXcrKJpTZ9DLn20wCk4E1TAzh8Pdis2eyw&s"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("كورسات",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Text("كورسات تعلم فلاتر و دارت للمبتدئين ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 123, 121, 121),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text("أمس",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("اسعار الذهب و العملات ",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  Text("الدولار وصل ل 60 جنيه  ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 138, 136, 136),
                                      )),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text("أمس",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// TextStyle st() {
//   return TextStyle(
//     color: Colors.black,
//   );
// }
