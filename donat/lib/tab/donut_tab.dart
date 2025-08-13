import 'package:donat/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //const DonutTab({super.key});
  List donutsOnsale = [
    //[flavor , price , color , imagename]
    ["Ice Cream", "36", Colors.blue, "lib/images_donuts/donut_frese.png"],
    [
      "Strawebery",
      "38",
      Colors.red,
      "lib/images_donuts/donut_pink.png",
    ],
    ["Ice Cream", "45", Colors.purple, "lib/images_donuts/donut_w.png"],
    ["Choco", "76", Colors.brown, "lib/images_donuts/donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnsale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnsale[index][0],
            donutPrice: donutsOnsale[index][1],
            donutColor: donutsOnsale[index][2],
            imageName: donutsOnsale[index][3],
          );
        });
  }
}
