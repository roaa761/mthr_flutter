import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/my_drawr.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);



  get stepperType => null;


  //create list of data for stepper!!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.blueAccent,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              )
          ),
        ),
        title: const Text(
          'Home', style: TextStyle(fontSize: 50, color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
    child:
      Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )
            ),
            child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Image.asset('assets/images/Truck.jpg', height: 100,),
                      Text("MTHR Tracker", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                )
            ),
          ),
          body()
        ],
      ),
      )
    );
  }

  Widget body() {
    // ignore: dead_code
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text("Tracking Number :", style: TextStyle(fontSize: 16),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 310,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "e.g #1234587966"
                  ),
                ),
              ),
              SizedBox(width: 30,),
              Icon(Icons.search, size: 20,),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
          child: Row(
            children: [
              Text("Result :", style: TextStyle(fontSize: 25),),
              Spacer(),
              Icon(Icons.close, size: 25,)
            ],
          ),
        ),
  ]
    );
  }
}

class MyDrawr {
}