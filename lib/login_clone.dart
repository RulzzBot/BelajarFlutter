import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginclone extends StatefulWidget {
  const loginclone({super.key});

  @override
  State<loginclone> createState() => _logincloneState();
}

class _logincloneState extends State<loginclone> {
  bool _checkstate = false;
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
              child: Image.asset('images/logoSpo.webp',
              width: 250,
              ),
            ),
            
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text('Enjoy Listening To Music', style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  labelText: 'Email Addres or Username',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  labelText: 'Re Enter Password',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Checkbox(value: _checkstate, onChanged: (bool?newValue){
                  setState(() {
                    _checkstate = newValue ?? false;
                  });
                },
                ),
              ),
              Text("Remember Me", style: GoogleFonts.poppins(),)
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                  backgroundColor: Colors.green
                ),
                onPressed: (){},
                child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text("Already have an account?", style: GoogleFonts.poppins(fontSize: 10),)
              ),
              Container(
                margin: EdgeInsets.fromLTRB(7, 12, 0, 0),
                child: InkWell(
                  onTap: (){},
                  child: Text("Sign In", style: GoogleFonts.poppins(fontSize: 10, color: Colors.blue),),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
