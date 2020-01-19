import 'package:flutter/material.dart';
import 'package:loja_virtual/tabs/homeTab.dart';
import 'package:loja_virtual/tabs/productsTab.dart';
import 'package:loja_virtual/widgets/cartButton.dart';
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
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        )
      ],
    );
  }
}
