import 'package:diologin/shared/app_images.dart';
import 'package:flutter/material.dart';

class ListViewHorizontal extends StatefulWidget {
  const ListViewHorizontal({super.key});

  @override
  State<ListViewHorizontal> createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  elevation: 4,
                  child: Image.asset(
                    AppImages.paisagem,
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Image.asset(
                    AppImages.user1,
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Image.asset(
                    AppImages.paisagem,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
