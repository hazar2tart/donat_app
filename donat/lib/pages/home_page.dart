import 'package:donat/tab/burger_tab.dart';
import 'package:donat/tab/donut_tab.dart';
import 'package:donat/tab/pancake_tab.dart';
import 'package:donat/tab/pizza_tab.dart';
import 'package:donat/tab/smoothie_tab.dart';
import 'package:donat/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of tabs
  List<Widget> mytabs = const [
    //donut tab
    MyTab(
      iconPath: 'lib/images_donuts/icon_donut.png',
    ),
    //burg tab
    MyTab(
      iconPath: 'lib/images_donuts/icon_burger.png',
    ),
    //smooth
    MyTab(
      iconPath: 'lib/images_donuts/icon_smoothie.png',
    ),
    //panck
    MyTab(
      iconPath: 'lib/images_donuts/icon_pancakes.png',
    ),
    //pizza tab
    MyTab(
      iconPath: 'lib/images_donuts/icon_pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                //open drawe
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want t o eat ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Eat ',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  //const
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //tabbar
            TabBar(tabs: mytabs),
            //tabar view
            Expanded(
                child: TabBarView(children: [
              //donut
              DonutTab(),
              //burg
              BurgerTab(),
              //smo
              SmoothieTab(),
              //pank
              PancakeTab(),
              //pizz
              PizzaTab(),
              //
            ]))
          ],
        ),
      ),
    );
  }
}
