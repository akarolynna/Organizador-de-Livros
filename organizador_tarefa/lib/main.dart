import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    color: const Color.fromARGB(255, 135, 205, 255),
                    height: 100,
                    width: 100),
                Container(
                    color: const Color.fromARGB(255, 255, 117, 195),
                    height: 50,
                    width: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
        
             children: [
              Container(color: const Color.fromARGB(255, 179, 135, 255),height: 50,width: 50,child: const Text( 'A', style: TextStyle(color: Colors.white,fontSize: 40 ), textAlign:  TextAlign.center)),
              Container(color: const Color.fromARGB(255, 255, 78, 78),height: 50,width: 50,child: const Text( 'N', style: TextStyle(color: Colors.white,fontSize: 40 ), textAlign:  TextAlign.center)),
              Container(color: const Color.fromARGB(255, 235, 110, 56),height: 50,width: 50,child: const Text( 'N', style: TextStyle(color: Colors.white,fontSize: 40 ), textAlign:  TextAlign.center)),
               Container(color: const Color.fromARGB(255, 104, 235, 56),height: 50,width: 50,child: const Text( 'A', style: TextStyle(color: Colors.white,fontSize: 40 ), textAlign:  TextAlign.center)),
             ], 
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    color: const Color.fromARGB(255, 241, 255, 135),
                    height: 100,
                    width: 100),
                Container(
                    color: const Color.fromARGB(255, 149, 255, 117),
                    height: 50,
                    width: 50),
              ],
            )
          ],
        ));
  }
}
