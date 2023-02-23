
import 'package:assigment_project/third_page.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(MaterialPageRoute(
                builder: (context) => FirstPage(),
              ));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Center(
                  child: Text(
                    "HOME",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lock,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: Container(
                        color: Colors.black,
                        child: Icon(
                          Icons.menu_open_outlined,
                          color: Colors.white,
                        ),
                      ),
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "PIZZA",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("BURGER"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("DRINKS"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text("SAUCES"),
                    ),
                    Text("COMBO")
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  },));
                },
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/burger chips on wood.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Super',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Delicious',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 60),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'BURGER',
                            style: TextStyle(
                              fontFamily: 'Schyler',
                              color: Colors.yellow,
                              fontSize: 45,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 110),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Todays best deal',
                            style: TextStyle(
                              fontFamily: 'Schyler',
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.asset(
                                      'assets/images/chicken brest (1).jpg',
                                      height: 150,
                                      width: 150,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "BBQ Chicken Breast",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                                (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "-47 ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                WidgetSpan(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child: Container(
                                          color: Colors.brown,
                                          child: Icon(Icons.add, size: 25, color: Colors.white,)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.asset(
                                      'assets/images/bacon burger.jpg',
                                      height: 150,
                                      width: 150,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Bacon Burger",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                                (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "-47 ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                WidgetSpan(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child: Container(
                                          color: Colors.brown,
                                          child: Icon(Icons.add, size: 25, color: Colors.white,)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.asset(
                                      'assets/images/chicken brest (1).jpg',
                                      height: 150,
                                      width: 150,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "BBQ Chicken Breast",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                                (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "-47 ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                WidgetSpan(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child: Container(
                                          color: Colors.brown,
                                          child: Icon(Icons.add, size: 25, color: Colors.white,)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.asset(
                                      'assets/images/bacon burger.jpg',
                                      height: 150,
                                      width: 150,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 120),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Bacon Burger",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                                (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "-47 ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                                ),
                                WidgetSpan(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 90),
                                      child: Container(
                                          color: Colors.brown,
                                          child: Icon(Icons.add, size: 25, color: Colors.white,)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    ));
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                ),
                label: "Bacck to home page"),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ));
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                ),
                label: "Move to third page"),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ));
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ));
                  },
                  icon: Icon(
                    Icons.doorbell_outlined,
                    color: Colors.black,
                  ),
                ),
                label: ""),
          ],
          // onTap: (index) {
          //   setState(() {
          //     selectedIndex = index;
          //   });
          // },
        ),
      ),
    );
    throw UnimplementedError();
  }
}
