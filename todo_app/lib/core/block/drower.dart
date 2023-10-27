import 'package:flutter/material.dart';

class buttomdrower extends StatelessWidget {
  const buttomdrower({required this.Iconn,required this.lapil});
final IconData Iconn;
final String lapil;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 30),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent ,elevation: 0),
          child: Row(
            children: [
              Icon(Iconn ,color: Colors.purple,),SizedBox(width: 20,),
              Text(
                "$lapil ",
                style: TextStyle(
                    color: Colors.black,

                    fontSize: 20,
                    ),
              )
            ],
          ),
          onPressed: () {}),
    );
  }
}
