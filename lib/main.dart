import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: HomePeg(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePeg extends StatefulWidget {
  const HomePeg({Key? key}) : super(key: key);

  @override
  State<HomePeg> createState() => _HomePegState();
}

class _HomePegState extends State<HomePeg> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Select Gender",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            Row(
              children: [
                Expanded(child: Container()),
                Expanded(flex: 2,child: Column(
                  children: [
                    Row(

                      children: [
                        Radio(value: "Male", groupValue: gender, onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },),
                        Text("Male",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(

                      children: [
                        Radio(value: "Female", groupValue: gender, onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },),
                        Text("Female",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    Row(

                      children: [
                        Radio(value: "Transgender", groupValue: gender, onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },),
                        Text("Transgender",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ],
                )),
                Expanded(child: Container())
              ],
            ),

            Text("Selected Gender = $gender")
          ],
        ),
      ),
    );
  }
}
