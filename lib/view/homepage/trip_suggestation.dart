import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/productpage/product_mainpage.dart';

class TripSuggestation extends StatelessWidget {
  const TripSuggestation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Top Trips",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            )),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductMainPage()),
            );
          },
          child: Column(
            children: [
              GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      ////////////BoxDecoration//////////
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                offset: Offset(1, 3),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          ///////////image part/////////////////
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            height: 120,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://bsmedia.business-standard.com/_media/bs/img/article/2020-12/11/full/1607656152-0479.jpg",
                                    ))),
                          ),
                          ////////////ListTile part/////////////
                          const ListTile(
                            title: Text(
                              "Mount Averest",
                              style: TextStyle(fontSize: 15),
                            ),
                            subtitle: Text(
                              "Mountain",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.black87),
                            ),
                            trailing: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
