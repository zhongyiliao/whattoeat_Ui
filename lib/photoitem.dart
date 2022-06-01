import 'package:flutter/material.dart';
import 'package:whattoeat/photo.dart';

class PhotosItem extends StatelessWidget {
  final Photo photo;
  PhotosItem(this.photo);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: photo.height,
      width: 240,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(photo.imageUrl),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
