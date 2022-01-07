// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'buttom_navigation/buttom_navigationbar.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ///Text/
          Row(
            children: const [
              Text("Overview",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 21,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 50,
              ),
              Text("Reviews",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          ///Duration & Rating//
          Row(
            children: [
              Container(
                width: 150,
                child: const ListTile(
                  title: Text(
                    "DURATION",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  dense: true,
                  leading: Icon(
                    Icons.timelapse,
                    color: Colors.deepOrange,
                    size: 25,
                  ),
                  subtitle: Text("5 hours",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                width: 150,
                child: const ListTile(
                  title: Text(
                    "Rating",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  dense: true,
                  leading: Icon(
                    Icons.star,
                    color: Colors.deepOrange,
                    size: 25,
                  ),
                  subtitle: Text("4.8 out of 5",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
              
        ],
      ),
    );
  }
}
