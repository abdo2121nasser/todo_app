import 'package:flutter/material.dart';
import 'package:work_shop1/core/block/category_color_block.dart';
import 'package:work_shop1/core/block/circular_slider_block.dart';
import 'package:work_shop1/core/block/general_button_block.dart';


class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Dash board Tasks',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),

          Align(alignment: Alignment.center,
              child: CircularSliderBlock()),
  SizedBox(
    child: Column(children: [
      CategoryColorBlock(color: Colors.purple, lable: 'New Tasks'),
      CategoryColorBlock(color: Colors.blue, lable: 'In Progress tasks'),
      CategoryColorBlock(color: Colors.green, lable: 'Completed Tasks'),
      CategoryColorBlock(color: Colors.grey.shade800, lable: 'OutDated Taskes'),
    ]),
  ),
          GeneralButton(lable: 'Go To Tasks', function: (){},
              width: double.maxFinite,hight: 70)
        ],
      ),
    );
  }
}
