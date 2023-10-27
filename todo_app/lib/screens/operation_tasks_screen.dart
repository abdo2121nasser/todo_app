import 'package:flutter/material.dart';
import 'package:work_shop1/core/block/general_button_block.dart';
import 'package:work_shop1/core/block/general_text_field_block.dart';
import 'package:work_shop1/core/block/photo_picker_block.dart';



class OperationTasksScreen extends StatelessWidget {
  const OperationTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back,size: 30,)),
          centerTitle: true,
          title: Text('Add Task'),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
          SizedBox(
            child: Column(
              children: [
                GeneralTextField(hint: 'Title', icon: Icons.title),
                GeneralTextField(hint: 'Description', icon: Icons.description),
                GeneralTextField(hint: 'Start Date', icon: Icons.timer_outlined),
                GeneralTextField(hint: 'End Date', icon: Icons.timer_off_outlined),
              ],
            ),
          ),
PhotoPickerBlock(),
              GeneralButton(lable: 'Add Task', function: (){}, width: double.maxFinite, hight: 70)

            ],

          ),
        ),
      ),
    );
  }
}
