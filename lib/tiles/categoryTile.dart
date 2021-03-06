import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/categoryScreen.dart';

class CategoryTile extends StatelessWidget {
  final DocumentSnapshot snapshot;
  CategoryTile(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: CircleAvatar(
      //   radius: 23.0,
      //   backgroundColor: Colors.transparent,
      //   backgroundImage: NetworkImage(snapshot.data["icon"]),
      // ),
      leading: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.network(
          snapshot.data["icon"],
      ),
      ),
      title: Text(snapshot.data["title"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CategoryScreen(snapshot)));
      },
    );
  }
}
