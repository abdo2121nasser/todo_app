import 'package:flutter/material.dart';



class GeneralTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  GeneralTextField({required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10
      ),
      child: TextFormField(
        //keyboardType: TextInputType.none,

        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide:
              BorderSide(width: 1.7,color: Colors.grey.shade600)),
          border:const  OutlineInputBorder(),
          hintText: hint,
           prefixIcon: Icon(icon),
          hintStyle:const TextStyle(color: Colors.black87,fontSize: 20)
        ),
      ),
    );
  }
}
