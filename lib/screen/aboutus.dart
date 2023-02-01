import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/my_drawr.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aboutus",style: TextStyle(fontSize: 30),),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: () {Navigator.pushNamed(context, "/Home");},),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.delete,color: Colors.red,),)],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color:Colors.white,
            child:Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(height: 23),
                Hero(
                  tag: 'logoAnimation',
                  child: Image.asset(
                    'assets/images/555.png',height: 190,width: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height:40),
                Column(
                  children:  const [
                    Text("Contactinformation:", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 19,),
                    Center(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email,color: Colors.black,),
                          label: Text("institute761@gmail.com",style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 19,),
                    Center(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.phone_in_talk,color: Colors.black,),
                          label: Text("+96355478921",style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23,),
                    Text("Company Address:", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 19,),
                    Center(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText:"Syria,Damascus,Mazeh.",
                          border: InputBorder.none,
                          disabledBorder: OutlineInputBorder(

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}

