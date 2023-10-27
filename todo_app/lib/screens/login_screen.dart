import 'package:flutter/material.dart';
import 'package:work_shop1/core/block/general_text_field_block.dart';
import 'package:work_shop1/core/constants/color_constants.dart';
import 'package:work_shop1/core/constants/constants_images.dart';
import 'package:work_shop1/screens/register_screen.dart';

import '../core/block/general_button_block.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image.asset(ConstantImages.kLogoImage,width: 200,height: 200,),
              ),
              const Text('Login',
              style: TextStyle(color: Colors.black87,fontSize: 30,fontWeight: FontWeight.bold),),
              GeneralTextField(hint: 'Email',icon: Icons.email_outlined,),
              GeneralTextField(hint: 'Password',icon: Icons.password,),
             const SizedBox(height: 20,),
               Row(
                children: [
                  const Text("Don't have an account?",
                  style: TextStyle(fontSize: 20),),
                  Padding(
                    padding:const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                      },
                      child: const Text('Register',
                      style: TextStyle(fontSize: 20,color: Colors.blue),),
                    ),
                  )
                ],
              ),
GeneralButton(lable: 'Login',function: (){},width: double.infinity,hight: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
