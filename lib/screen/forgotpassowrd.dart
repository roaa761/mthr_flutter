import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('ForgotPassword',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
        ],
      ),

      body:Container(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot Password?',style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 30,),

              const Text('Enter the email address associated with '
                  'you are account',style: TextStyle(color: Colors.black45,fontSize: 15),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 30,),
              Container(
                child:  TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,color: Colors.grey),
                      ),
                      prefixIcon: Icon(Icons.email,color: Colors.black45,),
                      labelText: 'Enter your email',
                      hintText: 'ex: test@gmail.com',
                      border: InputBorder.none),

                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Home");
                },
                child: const Text(
                  "Send",
                  style: TextStyle(fontSize: 25 , color: Colors.white ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 17),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  shadowColor: Color(0xFFF5F6F9),
                ),
              ),
            ]
        ),
      ),
    );
  }

}
