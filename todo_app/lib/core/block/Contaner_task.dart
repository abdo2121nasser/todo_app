import 'package:flutter/material.dart';

class TaskContaner extends StatefulWidget {
  const TaskContaner({super.key});

  @override
  State<TaskContaner> createState() => _TaskContanerState();
}

class _TaskContanerState extends State<TaskContaner> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(

        margin: EdgeInsets.all(10),
        height: 100,
        width: 300,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "titel",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Expanded(
              child: Text(
                "describtion",
                style: TextStyle(color: Colors.blueGrey, fontSize: 15),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.circular(5)),
                    child:  Row(
                      children: [Icon(Icons.timer_outlined) , SizedBox(width: 5,),Text("Date Start")],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [Icon(Icons.timer_off_outlined),SizedBox(width: 5,),Text("date end")],
                      
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
