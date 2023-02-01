import 'package:flutter/material.dart';
import 'package:mthr_flutter/screen/login.dart';
import 'package:mthr_flutter/sqldb.dart';
class  Signup extends StatelessWidget {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var mobilemamberController = TextEditingController();
  SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: <Widget>[
                 // MaterialButton(onPressed: () async{
                   //await sqlDb.mydeleteDatabase();
                  // print("add true ");
                  //},
                 //child: Text("delete"),
                // ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 65),
                        const Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                         Center(
                          child: TextFormField(
                            controller: nameController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Usar Name',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.person,color: Colors.black45,),),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: emailController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Enter your email',
                              hintText: 'ex: test@gmail.com',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.email,color: Colors.black45,),),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: passwordController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Enter your Passward',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.lock,color: Colors.black45,),),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: TextFormField(
                            controller: mobilemamberController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {

                            },
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width: 3,color: Colors.blue)),
                              prefixIcon: Icon(Icons.phone,color: Colors.black45,),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: ()  async {
                            int response =  await sqlDb.insertData('''
                              INSERT INTO users ('email' , 'name' , 'password' , 'mobilemamber')
                      VALUES ("${emailController.text}" , "${ nameController.text}" , "${passwordController.text}" , "${ mobilemamberController.text}" )
                               ''');
                            if (response > 0){
                           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login()),
                                    (route) => false);
                            }
                          print("add");
    },
                          child: const Text(
                            "Register",
                            style: TextStyle(fontSize: 25 , color: Colors.white ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 20, vertical: 10 )
                            ),
                          ),
                        ),
                        SizedBox(height: 19),
                          ],

                        ),
                      

                    ),
                ],
              ),
          ),

        ),
    );
  }

  void signup() {}



  
}

