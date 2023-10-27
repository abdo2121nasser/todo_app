import 'package:flutter/material.dart';

import '../core/block/general_button_block.dart';
import '../core/block/general_text_field_block.dart';
import '../core/constants/color_constants.dart';
import '../core/constants/constants_images.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 30,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },
            child:const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
      ),
      backgroundColor: ColorConstants.kWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset(ConstantImages.kLogoImage,width: 200,height: 200,),
              const Text('Register',
                style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold),),
              GeneralTextField(hint: 'Name',icon: Icons.person,),
              GeneralTextField(hint: 'Email',icon: Icons.email_outlined,),
              GeneralTextField(hint: 'Password',icon: Icons.password,),
              const SizedBox(height: 10,),

              GeneralButton(lable: 'Register',function: (){},width: double.infinity,hight: 50)
            ],
          ),
        ),
      ),
    );
  }
}
