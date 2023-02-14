

import 'package:assigment_project/second_page.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(MaterialPageRoute(
                builder: (context) => SecondPage(),
              ));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Container(
            color: Colors.white,
            child: Column(

              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  child: Image.asset(
                    'assets/images/burger multiple layer page 3.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 20),
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Text("McDonalds"),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
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
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Double Cheese Burger",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "-47",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30),
                  child: Row(
                    children: [
                      Text(
                        "Lorem ipsum doler sit amet, consetetur \nsadipscing ellitr, sed diam nonumy \neirmod tempor invited invident ut labor et\ndoloredr magnaalliquaym",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Delivery time:",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        "30",
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        color: Colors.brown,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 15,
                          ),
                        ))),
                label: "remove"),
            BottomNavigationBarItem(
                icon: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        color: Colors.brown,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 15,
                          ),
                        ))),
                label: "add"),
            BottomNavigationBarItem(
                icon: TextButton(
                  onPressed: () {
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.brown),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom:  10),
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                label: ""),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
