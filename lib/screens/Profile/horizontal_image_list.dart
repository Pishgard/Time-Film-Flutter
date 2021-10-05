import 'package:flutter/material.dart';
import 'package:wtiau_blog/screens/Profile/card_item.dart';

class HorizontalImageList extends StatefulWidget {
  @override
  _HorizontalImageListState createState() => _HorizontalImageListState();
}

class _HorizontalImageListState extends State<HorizontalImageList> {
  final images = [
    "px0.jpg",
    "px1.jpg",
    "px2.jpg",
    "px3.jpg",
    "px4.jpg",
    "px5.jpg",
    "px6.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.00,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            final image = images[index];
            return CardItem(
              imageName: image,
              onTap: () => _onCardClicked(),
            );
          }),
    );
  }

  void _onCardClicked() {}
}