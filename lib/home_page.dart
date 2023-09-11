import 'package:flutter/material.dart';
import 'package:new_design/button.dart';
import 'package:new_design/conta.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
              width: width,
              height: height / 2,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('images/img.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                       padding:
                        EdgeInsets.only(
                          top: height /20, 
                          left: width /20),
                   
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.list,
                                color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Good Evening",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                  Text(
                                    "Devan",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height / 15, left: width / 1.1),
                    child: const Icon(Icons.notifications,
                    color: Colors.white,),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height / 2.8, left: width / 16),
                    child: Row(
                      children: [
                        SendButton('Send', Colors.white),
                        SendButton('Request', Colors.black),
                      ],
                    ),
                  )
                ],
              )),
          SizedBox(
            height: height / 27,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "History",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: width / 8),
              const Text(
                'View all',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.12,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Containerr(),
                Containerr(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Containerr(),
                Containerr(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

