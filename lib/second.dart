import 'package:flutter/material.dart';

import 'main.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300",
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                          decoration: BoxDecoration(
                            color: primarycolor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "3 hrs 24 min",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: Chip(
                          backgroundColor: primarycolor,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          label: Text(
                            "Your pick 💛",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: SingleChildScrollView(
                // physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFY8X8BDSNJmIX2UR4V2uTjzpmmfGYnp3W5UuiEDWHP90PFOE1HBC96ZGDY5mH-nfButE&usqp=CAU",
                              height: 40,
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hemanta Jung Karki",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "2022-10-12",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              bottom: 13,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "3 / 10",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: secondryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Overview",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                    Card(
                      elevation: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 0; i < 4; i++)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                  ),
                                  child: OutlinedButton(
                                    child: Text(
                                      'Videos',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      primary: customBlue,
                                      onSurface: customBlue,
                                      side: BorderSide(
                                        width: 1.0,
                                        color: customBlue,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 0,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Course Video",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  // height: 35,
                                  // width: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 229, 227, 245),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 201, 225, 241),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Color.fromARGB(255, 45, 31, 238),
                                      size: 45,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'lesson 1',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'lesson description',
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '24:00',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            for (var i = 0; i < 5; i++)
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      // height: 35,
                                      // width: 50,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 229, 227, 245),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 201, 225, 241),
                                            blurRadius: 3,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.play_arrow,
                                          color:
                                              Color.fromARGB(255, 45, 31, 238),
                                          size: 45,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'lesson 1',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'lesson description',
                                              style: TextStyle(
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          '24:00',
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            // horizontal: 20,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 38 / 100,
              margin: EdgeInsets.only(
                bottom: 10,
                top: 12,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(
                        0xff0032FF,
                      ),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 1)),
                ],
                color: Color(
                  0xff0032FF,
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 5,
                  ),
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                onPressed: () {
                  print("Printed");
                },
                child: Text(
                  "Book Sheet",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 38 / 100,
              margin: EdgeInsets.only(
                bottom: 10,
                top: 12,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(
                        0xffEB0000,
                      ),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(0, 1)),
                ],
                color: Color(
                  0xffEB0000,
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 5,
                  ),
                  primary: Colors.transparent,
                  elevation: 0,
                ),
                onPressed: () {
                  print("Printed");
                },
                child: Text(
                  "Rs. 999",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
