import 'package:flutter/material.dart';
import 'package:loja_virtual/tabs/homeTab.dart';
import 'package:loja_virtual/widgets/customDrawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        )
      ],
    );
  }
}
