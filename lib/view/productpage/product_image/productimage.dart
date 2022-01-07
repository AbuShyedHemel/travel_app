import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var weight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: Container(
          height: height * 0.6,
          width: weight * 0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: Offset(1, 3),
                    color: Colors.grey)
              ]),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(1, 3),
                                  blurRadius: 12,
                                )
                              ],
                              borderRadius: BorderRadius.circular(18)),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.deepOrange,
                          )),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(1, 3),
                                blurRadius: 12,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: const Icon(Icons.favorite_border,
                            color: Colors.deepOrange))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
