import 'dart:ui';

import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String img;
  final String name;
  final String location;
  final bool isFav;
  final VoidCallback? onFavClick;


  const HomeCard({
    super.key,
    required this.img,
    required this.name,
    required this.location,
    this.onFavClick,
    this.isFav = false,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsetsGeometry.all(6), child: Container(
        height: 260,
        width: 213,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
          children: [
           Image.network(img, height: 260, width: 213, fit:  BoxFit.cover,),
            Positioned(
                left: 13,
                bottom: 13,
                right: 13,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
                        SizedBox(height: 5,),
                        Text(location, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),

                      ],
                    ),
                    IconButton(onPressed: onFavClick, icon: Icon(Icons.heart_broken_rounded))

                  ],
                ))
          ],
        )
    ),);
  }
}
