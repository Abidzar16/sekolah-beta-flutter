// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,        
        backgroundColor: Colors.yellow,
        title: const Text(
          "Halo saya Latihan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.yellow,
        onPressed: () {  },
        child: Center(
          child: (
            Text(
              "ABC",
              style: TextStyle(color: Colors.black),
            ))
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("saya widget ditengah"),
            Container(
              width: double.infinity, height: 50, color: Colors.red.shade400
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Saya Kiri"
                ),
                Text(
                  "Saya Kanan"
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.amber,
              width: double.infinity,
              child: Container(
                height: 50,
                color: Colors.purple,
                child: Center(
                    child: 
                      Text("Saya Berwarna",
                      style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ),
            Spacer(),
            Container(
              height: 75,
              color: Colors.black,
              width: double.infinity,
              child: Center(
                    child: 
                      Text("Saya dibawah sendiri",
                      style: TextStyle(color: Colors.white),
                  ),
                ),
            ),
          ]
        )
      )
    );
  }
}

