import 'package:flutter/material.dart';
import 'package:nti/lists/listChats.dart';
import 'package:nti/view/screen/statues.dart';

bool isArabic = true;

class chats extends StatelessWidget {
  const chats({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 3, 183, 45),
                ),
                label: "chats"),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const statues()),
                      );
                    },
                    icon: const Icon(
                      Icons.update,
                      color: Colors.white,
                    )),
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
        backgroundColor: Colors.black87,
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
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: const Text(
            "تحديثات",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.9),
          ),
        ),

        body: ListView.builder(
            itemCount: listChats.length,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(
                  listChats[i].name,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(listChats[i].msg,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 138, 136, 136),
                    )),
                trailing: Text(listChats[i].time),
                leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(listChats[i].image)),
              );
            }),
        // body: Column(
        //   children: [
        //     const Divider(
        //       thickness: 1,
        //     ),
        //     SizedBox(
        //       height: 120,
        //       child: Padding(
        //         padding: const EdgeInsets.all(15),
        //         child: Column(
        //           children: [
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Container(
        //                   height: 80,
        //                   width: 80,
        //                   decoration: const BoxDecoration(
        //                     shape: BoxShape.circle,
        //                     color: Colors.white,
        //                     image: DecorationImage(
        //                         image: NetworkImage(
        //                             "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg"),
        //                         fit: BoxFit.fill),
        //                   ),
        //                 ),
        //                 const Padding(
        //                   padding: EdgeInsets.all(20),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text("Heba Tarek",
        //                           style: TextStyle(
        //                               color: Colors.white, fontSize: 20)),
        //                       Text("Iam a CCE student in MU ",
        //                           style: TextStyle(
        //                             color: Color.fromARGB(255, 123, 121, 121),
        //                           )),
        //                     ],
        //                   ),
        //                 ),
        //                 const Spacer(),
        //                 const Text("أمس",
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     )),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

// TextStyle st() {
//   return TextStyle(
//     color: Colors.black,
//   );
// }