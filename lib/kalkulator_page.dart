import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});


  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  String hasil = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: false,
              controller: controller1,
              keyboardType: TextInputType.number,
              inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Angka Pertama',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: false,
              controller: controller2,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Angka Kedua',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(85, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: () {
                        int angka1 = int.parse(controller1.text);
                        int angka2 = int.parse(controller2.text);

                        setState(() {
                          hasil = "${angka1 + angka2}";
                        });
                      },
                      child: Text("+", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),),
              ),Container(
                margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(85, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: () {
                        int angka1 = int.parse(controller1.text);
                        int angka2 = int.parse(controller2.text);

                        setState(() {
                          hasil = "${angka1 - angka2}";
                        });
                      },
                      child: Text("-", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),),
              ),Container(
                margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(85, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: () {
                        int angka1 = int.parse(controller1.text);
                        int angka2 = int.parse(controller2.text);

                        setState(() {
                          hasil = "${angka1 * angka2}";
                        });
                      },
                      child: Text("x", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),),
              ),Container(
                margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(85, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: () {
                        int angka1 = int.parse(controller1.text);
                        int angka2 = int.parse(controller2.text);

                        setState(() {
                          hasil = "${angka1 / angka2}";
                        });
                      },
                      child: Text("/", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(hasil, style: TextStyle(fontSize: 20),)
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
                onPressed: () {
                  setState(() {
                    controller1.text = "";
                    controller2.text = "";
                    hasil = "HASIL : ";
                  });
                },
                child: Text("RESET", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}
