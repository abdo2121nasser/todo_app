import 'package:flutter/material.dart';


class GeneralButton extends StatelessWidget {
final String lable;
final VoidCallback function;
final double width,hight;

GeneralButton({required this.lable, required this.function, required this.width, required this.hight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ElevatedButton(onPressed: function,

          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            backgroundColor: Colors.purple,
            fixedSize: Size(width, hight),
          ),
          child:Text(lable,
          style: TextStyle(fontSize: 20,color: Colors.white),)),
    );
  }
}
