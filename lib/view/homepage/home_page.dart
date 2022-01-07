import 'package:flutter/material.dart';
import 'package:travel_app/view/appbar/appbar.dart';
import 'package:travel_app/view/homepage/catagories.dart';
import 'package:travel_app/view/homepage/trip_suggestation.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 12, left: 5, right: 5),
        padding: const EdgeInsets.all(9),
        child: Column(
          children: const [
            AppBarView(),
            SizedBox(
              height: 20,
            ),
            Catagories(),
            TripSuggestation()
          ],
        ),
      ),
    ));
  }
}
