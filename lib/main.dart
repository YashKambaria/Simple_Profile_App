import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaClass()));
}

class NinjaClass extends StatefulWidget {
  @override
  State<NinjaClass> createState() => _NinjaClassState();
}

class _NinjaClassState extends State<NinjaClass> {
  int i = 0;
  String path="assets/img1.jpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
            fontSize: 27,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            i++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:IconButton(
                      onPressed: (){
                        setState(() {
                          if(path.trim()=="assets/img1.jpeg"){
                            path="assets/img2.jpeg";
                          }
                          else{
                            path="assets/img1.jpeg";
                          }
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.amber,
                      )
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(path),
                    radius: 60,
                  ),
                ),
                Container(
                  child:IconButton(
                      onPressed: (){
                        setState(() {
                          if(path.trim()=="assets/img1.jpeg"){
                            path="assets/img2.jpeg";
                          }
                          else{
                            path="assets/img1.jpeg";
                          }
                        });
                      },
                      icon: Icon(
                          Icons.arrow_forward_ios,
                        color: Colors.amber,
                      )
                  ),
                ),
              ],
            ),
            Divider(height: 60, color: Colors.grey[600]),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 5),
            Text(
              'Yash',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT FLUTTER LEARNING LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 5),
            Text(
              '$i',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.email_outlined, color: Colors.amber),
                SizedBox(width: 10),
                Text(
                  "yashkambaria245@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.code, color: Colors.amber),
                SizedBox(width: 10),
                Text(
                  "Leetcode",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 228, 0, 1),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.fromLTRB(0, 18, 0, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    i--;
                  });
                },
                child: Icon(Icons.minimize_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
