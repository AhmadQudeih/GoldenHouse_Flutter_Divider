// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // first screen
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_sharp),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 33, vertical: 50),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'مواعيدي',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('اسم المتجر'),
                          Spacer(),
                          Text('مثال اسم المتجر'),
                        ],
                      ),
                      Divider(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text('اسم الحلاق'),
                          Spacer(),
                          Text('مثال اسم الحلاق'),
                        ],
                      ),
                      Divider(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text('تاريخ و وقت الحجز'),
                          Spacer(),
                          Text('13 Nov - 4:30 pm'),
                        ],
                      ),
                      Divider(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text('السعر'),
                          Spacer(),
                          Text('120 د.ع'),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            // offset
                            offset: Offset(0, 10),
                            color: Colors.black.withOpacity(.12),
                            blurRadius: 20,
                            spreadRadius: 0)
                      ]),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
