import 'package:facebook_clone/main.dart';
import 'package:flutter/material.dart';

class login_facebook extends StatelessWidget {
  const login_facebook({super.key});

  @override
  Widget build(BuildContext context) {
    List image = [
      'assets/images/discount.jpg',
      'assets/images/download (1).jpg',
      'assets/images/download (2).jpg',
      'assets/images/download (3).jpg',
      'assets/images/download (4).jpg',
      'assets/images/download (5).jpg',
      'assets/images/download (6).jpg',
      'assets/images/download (7).jpg',
      'assets/images/download.jpg'
    ];
    List name = [
      'Your story',
      'James',
      'Alex',
      'Julie',
      'Liaba',
      'Bond',
      'ali',
      'Afridi',
      'kami'
    ];
    List images = [
      'assets/images/download.jpg',
      'assets/images/download (7).jpg',
      'assets/images/download (6).jpg',
      'assets/images/download (8).jpg',
      'assets/images/download (5).jpg',
      'assets/images/download (4).jpg',
      'assets/images/download (3).jpg',
      'assets/images/download (2).jpg',
      'assets/images/download (1).jpg',
      'assets/images/discount.jpg',
    ];
    List names = [
      'kami',
      'Afridi',
      'ali',
      'Bond',
      'Liaba',
      'Julie',
      'Alex',
      'James',
      'Jaamee',
    ];
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage(title: ''))),
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.blue),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue),
                          child: Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                      Icon(
                        Icons.messenger_outline_rounded,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
              Row(children: [
                Icon(
                  Icons.home_filled,
                  size: 30,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.tv_rounded,
                  size: 30,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.people_outline,
                  size: 30,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.house_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
                SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.menu_open_outlined,
                  size: 30,
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: image.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Image.asset(
                                  image[index],
                                  scale: 2,
                                ),
                              ),
                              Text(name[index]),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 650,
                        height: 330,
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    images[index],
                                    scale: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 430),
                                  child: Text(names[index]),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.more_horiz_rounded),
                                    Icon(Icons.cancel_outlined),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text('Happy Birthday My Dear Friends'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(image[index])),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1.3k'),
                                  Row(
                                    children: [
                                      Text('54 comments'),
                                      Text('80 shares')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.thumb_up_alt_outlined),
                                  Text('Like'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 110),
                                    child: Icon(Icons.comment_rounded),
                                  ),
                                  Text('Comment'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 120),
                                    child: Icon(Icons.send_sharp),
                                  ),
                                  Text("Send"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 110),
                                    child: Icon(Icons.send_outlined),
                                  ),
                                  Text('Share'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
