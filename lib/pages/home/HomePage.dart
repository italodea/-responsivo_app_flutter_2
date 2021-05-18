import 'package:flutter/material.dart';
import 'package:insta_responsivo_app/pages/home/widgets/PostWidget.dart';
import 'package:insta_responsivo_app/pages/home/widgets/ResponsiveAppBar.dart';
import 'package:insta_responsivo_app/pages/home/widgets/RigthPanel.dart';
import 'package:insta_responsivo_app/pages/home/widgets/StoriesList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1200,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      StoriesList(),
                      PostWidget(),
                      PostWidget(),
                      PostWidget(),
                    ],
                  ),
                ),
                RigthPanel()
              ],
            )),
      ),
    );
  }
}
