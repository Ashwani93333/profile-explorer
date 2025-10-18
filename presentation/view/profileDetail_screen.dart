import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Image.asset("assets/images/Rectangle 5613.png", fit: BoxFit.cover, height: 890, width:  double.infinity,),
        Positioned(
          bottom: 0,
            left: 0,
            right: 0,
            child: Card(
              elevation: 5,
          child: Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
            ),
            child: Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 15), child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Ashwani 17", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 29,),),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 21,),),
                        SizedBox(height: 6),
                        Text("Delhi, India", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18,),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_rounded, size: 40,))
                  ],
                )
              ],
            ),)
          ),
        ))
      ],
    );
  }
}
