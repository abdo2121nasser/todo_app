import 'package:flutter/material.dart';



class CategoryColorBlock extends StatelessWidget {
final Color color;
final String lable;

CategoryColorBlock({required this.color, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          width: 28,height: 32,
          decoration: BoxDecoration(
          color:color ,
            borderRadius: BorderRadius.circular(8)
          ),
        ),
        Text(lable,style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
