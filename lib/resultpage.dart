import 'package:bmicalculator/frontpage.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  double bmioutput=0;
ResultPage({
  required this .bmioutput
});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: Text("Your result is",style: TextStyle(fontSize: 40,color: Colors.white),)),
            SizedBox(height: 10,),
            Container(
              height: 450,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.bmioutput<18?"under weight":widget.bmioutput>25?"Over weight":"normal",style: TextStyle(color: widget.bmioutput<18?Colors.yellow:widget.bmioutput>25?Colors.red:Colors.green,fontSize: 50),),
                  Text(widget.bmioutput.round().toString(),style: TextStyle(fontSize: 40,color: widget.bmioutput<18?Colors.yellow:widget.bmioutput>25?Colors.red:

                  Colors.green),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                height: 50,
                width: 300,

                decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.yellow),
                child:
                Center(child: Text("Re-Calculate",style: TextStyle(fontSize: 30,color: Colors.black),)),

              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FrontPage()));
              },
            )
          ],

        ),

      ),
    );
  }
}
