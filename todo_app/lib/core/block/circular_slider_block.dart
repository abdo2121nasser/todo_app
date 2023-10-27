import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';



class CircularSliderBlock extends StatelessWidget {
  const CircularSliderBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      circularStrokeCap: CircularStrokeCap.round,
      radius: 150.0,
      lineWidth: 13.0,
      percent: 0.8,
      center:CircularPercentIndicator(
        radius: 130.0,
        lineWidth: 13.0,
        percent: 0.2,
        center:CircularPercentIndicator(
          radius: 110.0,
          lineWidth: 13.0,
          percent: 0.5,
          center:CircularPercentIndicator(
            radius: 90.0,
            lineWidth: 13.0,
            percent: 0.9,
            center:Text('7 tasks',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            progressColor: Colors.grey.shade800,
          ),
          progressColor: Colors.green,
        ),
        progressColor: Colors.blue,
      ),
      progressColor: Colors.purple,
    );
  }
}
