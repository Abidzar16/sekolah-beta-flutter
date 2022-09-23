// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:LatihanAssets()));

class LatihanAssets extends StatelessWidget {
  const LatihanAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: height / 2.5 ,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.zero),
              image: DecorationImage(
                image: AssetImage("nature.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hi, Cukimay",
                  style: TextStyle(
                    fontSize: 24, 
                    color: Colors.white
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white10,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("avatar.jpg"),
                    maxRadius: height,
                  )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(150, 200, 150, 200),
            height: height,
            width: height * 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Halo button',
                  style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w900, fontSize: 16
                  ),
                ),
                Text(
                  'Pencet saya',
                  style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w900, fontSize: 16
                  ),
                ),
                SizedBox(
                  width: width/2,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  onPressed: () {  }, 
                  child: Text(
                      'Pesan Test Sekarang',
                      style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900, fontSize: 16
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}