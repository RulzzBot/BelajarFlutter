import 'package:application_project/component/custom_button.dart';
import 'package:application_project/component/custom_check.dart';
import 'package:application_project/component/custom_img.dart';
import 'package:application_project/component/custom_text.dart';
import 'package:application_project/component/custom_txtField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginCloneFix extends StatelessWidget {
  LoginCloneFix({super.key});

  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
            Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                    child: CustomImg(path: "images/logoSpo.webp", width: 250))
            ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10,0, 0),
            child: CustomText(text: "Enjoy Listening To Music", style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ), colorTxt: Colors.black,),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: SizedBox(
                  width: 300,
                  child: MyTextField(hint: "Email Addres or Username", txtController: userController, radius: 50, obscure: false,  keyboardType: TextInputType.text, inputFormatters: [],))
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: SizedBox(
                  width: 300,
                  child: MyTextField(hint: "Password", txtController: passController, radius: 50, obscure: true,  keyboardType: TextInputType.text, inputFormatters: [],)
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: SizedBox(
                width: 300,
                  child: MyTextField(hint: "Confirm Password", txtController: confirmController, radius: 50, obscure: true,  keyboardType: TextInputType.text, inputFormatters: [],)
              ),
          ),
        Container(
          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: CustomCheck(value: false, onChanged: (value){}, text: "Remember Me")),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: CustomButton(text: "Sign Up", bg: Colors.green, width: 300 , height: 50, clrText: Colors.white, radius: 50, onPressed: (){},)),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CustomText(text: "Already have an account ? ", style: GoogleFonts.poppins(fontSize: 10), colorTxt: Colors.black,)),
              Center(child: CustomText(text: "Log In", style: GoogleFonts.poppins(fontSize: 10, color: Colors.blue), colorTxt: Colors.blue,))
            ],
          )
        ],
        
      ),
    );
  }
}
