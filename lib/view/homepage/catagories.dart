import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(     
      child: Column(
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Catagories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )),
          SizedBox(
            height: 20,
          ),
          ////////Catagories Button///////
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: height * .09,
                    width: width * .35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR30FfoWIPX1pywqu8b9lZsyADt8v3Blc87Eg&usqp=CAU'),
                        ),
                        Text("Camp")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.1))
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: height * .09,
                    width: width * .35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/184/184977.png'),
                        ),
                        Text("Mountain")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.1))
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: height * .09,
                    width: width * .35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          child: Image.network(
                              'https://cdn.pixabay.com/photo/2020/09/16/18/39/icon-5577198_960_720.png'),
                        ),
                        Text("Beach")
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 10,
                              color: Colors.grey.withOpacity(0.1))
                        ]),
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
