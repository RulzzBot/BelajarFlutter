import 'package:application_project/component/custom_txtField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child:
              MyTextField(hint: "Username",obscure: false, txtController: txtUsername, radius: 10, keyboardType: TextInputType.text, inputFormatters: [],)
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextField(hint: "Password",obscure: true, txtController: txtUsername, radius: 10, keyboardType: TextInputType.text, inputFormatters: [],)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 8, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(175 , 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                    onPressed: () {},
                    child: Text("Login", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(8, 10, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(175 , 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                  ),
                    onPressed: () {},
                    child: Text("Register",style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ],
          )
        ],

      ),

    );
  }
}
