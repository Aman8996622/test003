import 'dart:math';

import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: Container(
                              width: 600,
                              height: 600,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 5, color: Colors.grey),
                                shape: BoxShape.circle,
                                // color: Colors.blue,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(30),
                                width: 500,
                                height: 500,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 5, color: Colors.green),
                                  shape: BoxShape.circle,
                                  // color: Colors.blue,
                                ),
                                child: Container(
                                  height: 450,
                                  width: 450,
                                  margin: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.pink,
                                      ),
                                      shape: BoxShape.circle),
                                  child: Container(
                                    // margin: const EdgeInsets.all(20),
                                    margin: const EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 5, color: Colors.orange),
                                        shape: BoxShape.circle),
                                    child: Container(
                                      height: 300,
                                      width: 300,
                                      // margin: const EdgeInsets.all(20),
                                      margin: const EdgeInsets.all(30),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 5,
                                          color: Colors.green.shade700,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            // margin: const EdgeInsets.all(30),

                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey),
                                            child: Container(
                                                child: const Icon(
                                                    Icons.abc_outlined)),
                                          ),
                                          Container(
                                            alignment: Alignment.topCenter,
                                            child: const Text(
                                              "John Deo",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.height * 0.115,
                              // left: 0,
                              // bottom: ,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                              )),
                          position(),
                          verifiedButton(),
                          circleTemp(
                              left: MediaQuery.of(context).size.width * 0.08,
                              top: MediaQuery.of(context).size.height * 0.3),
                          circleTemp(
                            right: MediaQuery.of(context).size.width * 0.08,
                            top: MediaQuery.of(context).size.height * 0.3,
                          ),
                          button(),
                          circleTemp(
                            color: Colors.purple,
                            right: 0.2,
                            top: MediaQuery.of(context).size.height * 0.4,
                          ),
                          circleTemp(
                              color: Colors.green,
                              // right: MediaQuery.of(context).size.width / 2 - 75,
                              top: MediaQuery.of(context).size.height * 0.23),
                          circleTemp(
                              color: Colors.green,
                              left: MediaQuery.of(context).size.width / 2 - 100,
                              top: MediaQuery.of(context).size.height * 0.3),
                          badgetButton(),
                          circleTemp(
                              color: Colors.purple,
                              right:
                                  MediaQuery.of(context).size.width / 2 - 145,
                              top: MediaQuery.of(context).size.height * 0.35),
                          numberBox(
                            number: 474,
                            bottom: 5,
                            left: 35,
                          ),
                          numberBox(
                            number: 474,
                            top: MediaQuery.of(context).size.height * 0.15,
                            left: 50,
                          ),

                          // numberBox(number: 474,)

                          // numberBox(number: 474,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget verticalDivider() {
    return Positioned(
      left: 20,
      child: VerticalDivider(
        color: Colors.orange,
        width: double.infinity,
        thickness: 4,
      ),
    );
  }

  Widget position() {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.13,
      right: MediaQuery.of(context).size.width * 0.14,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: const Center(
              child: Text(
                "1.6 k",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
              ),
            ),
          ),
          const Text(
            "Follower",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  Widget verifiedButton() {
    return Positioned(
        bottom: MediaQuery.of(context).size.height * 0.13,
        left: MediaQuery.of(context).size.height * 0.07,
        child: Container(
          height: 45,
          width: 120,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.green),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.markunread_mailbox_outlined,
              ),
              Text(
                "Verified",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }

  Widget numberBox({
    double? left,
    double? right,
    double? top,
    double? bottom,
    Color? color,
    required int number,
  }) {
    return Positioned(
      // top: MediaQuery.of(context).size.height * 0.,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      // left: 0,
      // bottom: ,
      child: Container(
        height: 35,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: color ?? Colors.orange,
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget badgetButton() {
    return Positioned(
        // bottom: MediaQuery.of(context).size.height * 0.13,
        right: MediaQuery.of(context).size.height * 0.07,
        top: MediaQuery.of(context).size.height * 0.23,
        child: Container(
          height: 45,
          width: 120,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.cyan),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
              ),
              Text(
                "Badget",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
        ));
  }

  Widget circleTemp({
    double? left,
    double? right,
    double? top,
    double? bottom,
    Color? color,
  }) {
    return Positioned(
      // top: MediaQuery.of(context).size.height * 0.,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      // left: 0,
      // bottom: ,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: color ?? Colors.orange),
      ),
    );
  }

  Widget button() {
    return Positioned(
        // bottom: MediaQuery.of(context).size.height * 0.13,
        top: MediaQuery.of(context).size.height * 0.47,
        left: MediaQuery.of(context).size.height * 0.12,
        child: Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.yellow.shade500,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
              ),
              Text(
                "10 Review & Ratings",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
