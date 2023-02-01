import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widget/my_drawr.dart';
import 'package:vertical_stepper/vertical_stepper.dart';
import 'package:vertical_stepper/vertical_stepper.dart' as step;

void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

 class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>  {
   bool result = false;
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  List<step.Step> steps = [
    step.Step(
      shimmer: false,
      title: "Order Placed",
      iconStyle: Colors.blue,

      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
    alignment:Alignment.centerLeft,
    child: Text("2022/1/20 11:35 AM Order Created !!"),
    ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Dispatch in Progress",
      iconStyle: Colors.blue,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment:Alignment.centerLeft,
          child: Text("2022/1/20 4:10 PM Parcel Ready To Dispatch !!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Ready For Pickup",
      iconStyle: Colors.blue,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment:Alignment.centerLeft,
          child: Text("2022/1/21 9:03 AM Parcel Sorted"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "In Transit",
      iconStyle: Colors.blue,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment:Alignment.centerLeft,
          child: Text("2022/1/21 10:35 PM Parcel Arrived At Delivery Hub !!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Out For Delivery",
      iconStyle: Colors.indigo,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment:Alignment.centerLeft,
          child: Text(""),
        ),
      ),
    ),
  ];

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
        title:   RichText(
          text:TextSpan(
              children: [
                TextSpan(
                  text: 'MT',style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
                ),
                TextSpan(
                    children: [
                      TextSpan(
                        text: 'HR',style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ]
                ),
              ]
          ),
        ),
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
                      Image.asset('assets/images/Truck.jpg', height: 80,),
                      Text("MTHR Tracker", style: TextStyle(fontSize: 25),)
                    ],
                  ),
                )
            ),
          ),

        ],
      ),
      ),
    );
  }
  Widget body() {
    return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  SizedBox(height: 20,),
  Padding(
  padding:
  const EdgeInsets.only(
  left: 35.0
  ),
  child:
  Text(
  "Tracking Number :", style: TextStyle(
  fontSize: 16),
  ),
  ),
  SizedBox(height: 5,),
    Padding(padding:const EdgeInsets.fromLTRB(30, 0, 20, 0),
  child:
  Row(
  children: [
  Container(
  height:60, width: 310, decoration: BoxDecoration(color: Colors.white,
  borderRadius: BorderRadius.circular(50),
  ),
  child: TextField(decoration: InputDecoration(
  border: OutlineInputBorder(
  borderSide: BorderSide.none
  ),
  hintText: "e.g #1234587966"),
  ),
  ),
    SizedBox(width: 15,),
  GestureDetector(
    onTap: () {
      setState(() {
        result = true;
      });
    },
  child: Icon(Icons.search, size: 19,),
    )
  ],
  ),
  ),
  SizedBox(width: 15,),
  result
  ?Padding(padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
  child: Row(
  children: [Text("Result :", style: TextStyle(fontSize: 25),),
  Spacer(),
  GestureDetector(
    onTap: () {
    setState(() {
    result =true;
    });
    },
    child: Icon(Icons.close, size: 25,))
  ],
  ),
  )
   : SizedBox(width: 10,),
    result
    ? Padding(
      padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
      child:
      VerticalStepper(steps: steps, dashLength: 2,),
    )
    : Transform(transform: Matrix4.translationValues(0, -80, 5),
    child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_t24tpvcu.json"),
    )
  ],
  );
}
  }


//https://assets2.lottiefiles.com/packages/lf20_t24tpvcu.json"


