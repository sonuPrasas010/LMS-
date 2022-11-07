import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const primarycolor = Color(0xff303030);
const secondryColor = Color(0xffffcc00);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: primarycolor,
          elevation: 0,
          bottom: PreferredSize(
            child: Divider(
              color: Colors.white,
              thickness: 2,
              height: 2,
              endIndent: 10,
              indent: 10,
            ),
            preferredSize: Size(double.maxFinite, 0),
          ),
          // leading: Icon(
          //   Icons.dashboard,
          //   color: Colors.white,
          // ),

          actions: [
            Row(
              children: [
                Icon(Icons.notifications),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://www.directive.com/images/easyblog_shared/July_2018/7-4-18/b2ap3_large_totw_network_profile_400.jpg",
                  height: 10000,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: primarycolor,
                width: double.maxFinite,
                // height: ,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Hi, hamenta!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "What are the courses you are seeking for?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search Course",
                                contentPadding: EdgeInsets.all(2),
                                // enabledBorder: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(25.0),
                                //   borderSide: const BorderSide(
                                //     // color: Colors.red,
                                //     width: 2.0,
                                //   ),
                                // ),
                                // disabledBorder: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(25.0),
                                //   borderSide: const BorderSide(
                                //     // color: Colors.red,
                                //     width: 2.0,
                                //   ),
                                // ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    // color: Colors.red,
                                    width: 2.0,
                                    color: Colors.white,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Icon(
                              color: Color(0xffffcc00),
                              Icons.tune,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              bottom: 0,
              // left: 50,
              // right: 50,
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Recommeded Course!",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(),
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              size: 12,
                            ),
                            label: Text(
                              "See More",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.music_note,
                                color: secondryColor,
                              ),
                              Text(
                                "Music",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ),
            // removed from here and placed it to bottom navigation bar
            // so it will hide while opening keyboard
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: Container(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //     decoration: BoxDecoration(
            //       color: primarycolor,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     height: 70,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //           padding:
            //               EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            //           decoration: BoxDecoration(
            //               color: secondryColor,
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Icon(
            //                 Icons.home,
            //                 color: Colors.white,
            //               ),
            //               Text(
            //                 "Home",
            //                 style: TextStyle(color: Colors.white, fontSize: 12),
            //               )
            //             ],
            //           ),
            //         ),
            //         Container(
            //           padding:
            //               EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Icon(
            //                 Icons.fact_check,
            //                 color: Colors.white,
            //               ),
            //               Text(
            //                 "Course",
            //                 style: TextStyle(color: Colors.white, fontSize: 12),
            //               )
            //             ],
            //           ),
            //         ),
            //         //  favourite
            //         Container(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 20, vertical: 6),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: const [
            //               Icon(
            //                 Icons.favorite,
            //                 color: Colors.white,
            //               ),
            //               Text(
            //                 "Favorite",
            //                 style: TextStyle(color: Colors.white, fontSize: 12),
            //               )
            //             ],
            //           ),
            //         ),
            //         //  profile
            //         Container(
            //           padding: EdgeInsets.symmetric(
            //             horizontal: 20,
            //             vertical: 6,
            //           ),
            //           decoration: BoxDecoration(
            //               // color: secondryColor,
            //               borderRadius: BorderRadius.circular(10)),
            //           child: Column(
            //             children: [
            //               Icon(
            //                 Icons.account_circle_rounded,
            //                 color: Colors.white,
            //               ),
            //               Text(
            //                 "Profile",
            //                 style: TextStyle(color: Colors.white, fontSize: 12),
            //               )
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: primarycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                        color: secondryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.fact_check,
                          color: Colors.white,
                        ),
                        Text(
                          "Course",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  //  favourite
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        Text(
                          "Favorite",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  //  profile
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                        // color: secondryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
