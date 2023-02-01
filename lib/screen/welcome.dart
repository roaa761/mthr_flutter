import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color:Colors.lightBlue,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(),
                Hero(
                  tag: 'logoAnimation',
                  child: Image.asset(
                    'assets/images/IMG-20230106-WA0001.jpg',height:300,width: 300,
                  ),
                ),
                SizedBox(height: 90),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Login");
                  },
                  child:  RichText(
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white,
                      )
                  ),
)             ],
           ),
          ),
        ],
      ),
    );
  }
}