
import 'package:assigment_project/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                    'assets/images/chef page 1.png',
                    height: 300,
                    width: 300,
                  )),
              Text(
                "The Fastesst \nFood Delivery",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Lorem ipsum dolor sit amet, consetetur \nsedipscing elir, sed diam nonumy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Text('Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

    throw UnimplementedError();
  }
}
