import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ChoiceItem extends StatelessWidget {
  final String imageUrl;
  final int value;

  const ChoiceItem({required this.imageUrl, required this.value});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Image.network(
        imageUrl,
        height: 50.0,
        width: 50.0,
        fit: BoxFit.cover,
      ),
      title: Text('Value: $value'),
    );
  }
}