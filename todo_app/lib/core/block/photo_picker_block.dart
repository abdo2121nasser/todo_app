import 'package:flutter/material.dart';
import 'package:work_shop1/core/constants/constants_images.dart';



class PhotoPickerBlock extends StatelessWidget {
  const PhotoPickerBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(10),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  border: Border.all(color: Colors.purpleAccent)
),
        child: Column(
          children: [
            Image.asset(ConstantImages.kImageImage),
            Text('Add Photo to Your Note',style: TextStyle(
              fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}
