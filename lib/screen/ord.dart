import 'package:flutter/material.dart';
class Ord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                Hero(
                  tag: 'logoAnimation',
                  child: Image.asset(
                    'assets/images/dd.PNG',height:400,width: 400,
                  ),
                ),
                SizedBox(height: 90),
                Text("Your Requirement Is Done",style: TextStyle(fontSize: 30,),)
               ]
      )
          ),
        ],
      ),
    );
  }
}

