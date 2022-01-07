import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ///appbar///////
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile01.JPG"),
                  radius: 10,
                ),
                
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Hi, ASH",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Icon(Icons.add_alert)
          ],
        ),
        const SizedBox(height: 50),

        /////////where to go///////
        const Text(
          "Where do\n you want to go",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
        ),
        ////////////Search Input field//////////
        Container(
            height: 60,
            width: width * .8,
            child: Stack(
              children: [
                const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Search for places..",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                    width: width * 0.13,
                    height: height * 0.065,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: Offset(1, 3))
                        ]),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(1, 3))
                ],
                border: Border.all(color: Colors.white70))),
      ],
    );
  }
}
