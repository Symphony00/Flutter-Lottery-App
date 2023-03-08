import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int x = 0;
Random random = Random();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Center(child: Text("Lottery Winning Number is 5")),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: x == 5
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            const Icon(
                              Icons.done_all,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Congratulations. You have Won The Lottery.\nYour Number: $x.",
                              textAlign: TextAlign.center,
                            )
                          ])
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Better Luck Next Time. Your Number is $x.\n Try Again",
                              textAlign: TextAlign.center,
                            )
                          ])),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            x = random.nextInt(6),
            setState(
              () {},
            )
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
