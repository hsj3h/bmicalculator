import 'package:bmicalculator/resultpage.dart';
import 'package:flutter/material.dart';
class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  double height=150;
  double weight=40;
  double age=18;
  bool femalecheck=false;
  bool  malecheck=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR"
          ),backgroundColor: Colors.white24,
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Container(
                    height: 150,
                    width: 150,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: malecheck==true?Colors.orange:Colors.grey),
                    child: Column(
                      children: [
                        Text("Male",style: TextStyle(color: Colors.black,fontSize: 40),),
                        IconButton(onPressed: (){

                        }, icon: Icon(Icons.male,size: 50,)),

                      ],
                    ),



                  ),
                  onTap: (){
                    // if(10>11){print("10");}else{print("no");}
                    if(malecheck==true){
                      print("in if co");
                      setState(() {
                        malecheck=false;
                      });
                    }else{
                      print("in else");
                      setState(() {
                        femalecheck=false;
                        malecheck=true;
                      });
                    }

                  },
                ),

                GestureDetector(
                  child: Container(
                    height: 150,
                    width: 150,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                          color:femalecheck==true?Colors.orange:Colors.grey),
                    child: Column(
                        children: [
                          Text("Female",style: TextStyle(color: Colors.black,fontSize: 40),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.female,size: 50,)),

                        ]

                    ),


                  ),
                  onTap: (){
                    if(femalecheck==true){
                      setState(() {
                        femalecheck=false;
                        // malecheck=true;
                      });
                    }else{
                      setState(() {
                        malecheck=false;
                        femalecheck=true;
                        // malecheck=false;
                      });
                    }
                  },
                )
              ],
            ),SizedBox(height: 50,),
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.grey),
              child: Column(
                children: [
                  Text('Height',style: TextStyle(fontSize: 30,color: Colors.black),),
                  Text(height.round().toString()+"cm",style: TextStyle(fontSize: 50),),
                  Slider(value: height, onChanged: (changedvalue){
                    setState(() {
                      height=changedvalue;
                      print(height);
                    });
                  },
                  min: 100,
                      max: 250,)
                ],
              ),
            ),



            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 150,

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Column(
                    children: [
                      Text("Weight",style: TextStyle(fontSize: 30,color: Colors.black),),
                      Text(weight.round().toString()+"kg",style: TextStyle(fontSize: 20),),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              weight--;

                            });
                          }, icon: Icon(Icons.remove_circle_outline,size: 40,)),
                          IconButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          }, icon: Icon(Icons.add_circle_outline,size:40,)),
                        ],
                      )

                    ],
                  ),

                ),

                Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),

                        color: Colors.grey),
                    child: Column(
                      children: [
                        Text("Age",style: TextStyle(fontSize: 30,color: Colors.black),),
                        Text(age.round().toString(),style: TextStyle(fontSize: 20),),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(onPressed: (){
                              age--;
                            }, icon: Icon(Icons.remove_circle_outline,size: 40,)),
                            IconButton(onPressed: (){
                              age++;
                            }, icon: Icon(Icons.add_circle_outline,size:40,)),
                          ],
                        )

                      ],
                    )


                )
              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.yellow),
                child:
                Text("CALCULATE",style: TextStyle(fontSize: 30),),padding:EdgeInsets.fromLTRB(15, 5, 00, 00),
              ),onTap:
                (){
                double convertedheight=height/100;
                print(convertedheight);
                double bmi=weight/(convertedheight*convertedheight);
                print(bmi);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(bmioutput: bmi,)));
            },
            )

          ],



        ),

      ),
    );
  }
}
