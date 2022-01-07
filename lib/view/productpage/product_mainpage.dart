import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/view/productpage/product_detail/productdetail.dart';
import 'product_image/productimage.dart';

class ProductMainPage extends StatefulWidget {
  const ProductMainPage({Key? key}) : super(key: key);

  @override
  State<ProductMainPage> createState() => _ProductMainPageState();
}

class _ProductMainPageState extends State<ProductMainPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Buy Now",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Add To Cart',
              backgroundColor: Colors.blue),
        ],

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
        unselectedIconTheme: IconThemeData(opacity: 0.0, size: 0),
        // onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: const [ProductImage(), ProductDetail()],
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Favorite',
  ];
}
