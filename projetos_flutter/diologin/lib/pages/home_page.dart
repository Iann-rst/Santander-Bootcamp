import 'package:diologin/pages/card_page.dart';
import 'package:diologin/pages/page2.dart';
import 'package:diologin/pages/page3.dart';
import 'package:diologin/shared/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;
                  });
                },
                children: const [
                  CardPage(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            BottomNavigationBar(
              onTap: (value) {
                pageController.jumpToPage(value);
              },
              currentIndex: posicaoPagina,
              items: const [
                BottomNavigationBarItem(
                  label: "Page1",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Page2",
                  icon: Icon(Icons.person),
                ),
                BottomNavigationBarItem(
                  label: "Page3",
                  icon: Icon(Icons.settings),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
