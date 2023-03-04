import 'dart:convert';
import 'package:assigment_project/add_food.dart';
import 'package:assigment_project/second_page.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(
              builder: (context) => SecondPage(),
            ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu_open,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
          )
        ],
      ),
      //backgroundColor: Colors.white30,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/macd.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "McDonald's, Teuku Umar Bali",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Container(
                                      child: Icon(
                                        Icons.verified_user,
                                        color: Colors.green,
                                      )),
                                  Container(child: Text("Verified"))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text("4.8")
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: Colors.red,
                                ),
                                Text("2.4 km")
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
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
                    hintText: 'Search',
                    //label: Text("Search your food"),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              //color: Colors.green,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Voucher \n \n 3 voucher available there',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "All menu",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Text(
                        "View all",
                        style: TextStyle(color: Colors.green, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FutureBuilder<http.Response>(
              builder: (context, snapshot) {
                if (snapshot != null && snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(
                            MaterialPageRoute(
                              builder: (context) => AddFood(jsonDecode(
                                  snapshot.data!.body.toString())[index]),
                            ),
                          )
                              .then(
                                (value) {
                              if (value == true) {
                                setState(() {});
                              }
                            },
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(20)
                              ),
                              height: 200,
                              width: double.infinity,
                              child: Image(
                                  image: NetworkImage((jsonDecode(snapshot
                                      .data!.body
                                      .toString())[index]['avatar'])
                                      .toString())),
                            ),
                            Text(
                              (jsonDecode(snapshot.data!.body.toString())[index]
                              ['name'])
                                  .toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                        MaterialPageRoute(
                                          builder: (context) => AddFood(
                                              jsonDecode(snapshot.data!.body
                                                  .toString())[index]),
                                        ),
                                      )
                                          .then(
                                            (value) {
                                          if (value == true) {
                                            setState(() {});
                                          }
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                          border: Border.all(),
                                          color: Colors.green),
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      deleteFood((jsonDecode(snapshot.data!.body
                                          .toString())[index]['id']))
                                          .then(
                                            (value) {
                                          setState(() {});
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                          border: Border.all(),
                                          color: Colors.red),
                                      child: Text("Delete",
                                          style:
                                          TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount:
                    jsonDecode(snapshot.data!.body.toString()).length,
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
              future: getFood(),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

  Future<http.Response> getFood() async {
    var response = await http
        .get(Uri.parse("https://637f5cd65b1cc8d6f942aebf.mockapi.io/food"));
    return response;
  }

  Future<void> deleteFood(id) async {
    var response1 = await http.delete(
        Uri.parse("https://637f5cd65b1cc8d6f942aebf.mockapi.io/food/$id"));
  }
}
