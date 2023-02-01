import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mthr_flutter/screen/order.dart';
import 'package:mthr_flutter/screen/sender.dart';


import '../sqldb.dart';
enum Gender {admin,users,}
class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  SqlDb sqlDb = SqlDb();
   Gender?_gender = Gender.admin;

  bool get value => value;

  late String userType;
  Future<List<Map>> readDate() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM users");
    print("&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    print(response.length);
    return response;
  }
  read() async {
    await readDate();
  }
  @override
  void initState() {
    print("*******");
    read();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 65),
                        const Text(
                          'Hello,',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 70,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        SizedBox(
                          height: 140,
                        ),
                        Center(
                          child: TextFormField(
                            controller: emailController,
                            onFieldSubmitted: (String value){},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Enter your email',
                              hintText: 'ex: test@gmail.com',
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: Icon(Icons.email,color: Colors.black45,),
                            ),
                          ),
                        ),
                        SizedBox(height: 19),
                        Center(
                          child: TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onFieldSubmitted: (String value){print(value);},
                            onChanged: (String value) {},
                            decoration: InputDecoration(
                              labelText: 'Enter your Passward',
                              suffixIcon: Icon(Icons.visibility_off,color: Colors.black45,),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              prefixIcon: Icon(Icons.lock,color: Colors.black45,),
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                        Row(children: [
                         Text('user'),
                          Radio<Gender>(value:Gender.users, groupValue: _gender,
                            onChanged:(Gender? value) {
                              print(value);
                            if(value!=null)
                              setState(() {
                                _gender = value;
                                userType="users";
                            });
                          }),
                          ]),
                        SizedBox(width :25),
                          Row(children: [
                             Text('admin'),
                            Radio<Gender>(value:Gender.admin, groupValue: _gender,
                                onChanged:(Gender? value) {
                                  print(value);
                                  if(value!=null)
                                    setState(() {
                                      _gender = value;
                                      userType="admin";
                                    });
                                  }),
                           ]
                          ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            print('user btype is $userType');
                            if(userType =="admin"){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> Sender()),
                              );}
                            else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Order()),);
                            }
                            print(" user Type") ;

                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 25 , color: Colors.white ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(horizontal: 20, vertical: 10 )
                            ),
                          ),
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {Navigator.pushNamed(context, '/ForgotPassword');},
                                child: Text("Forgot Password ?", style: TextStyle(fontWeight: FontWeight.bold))),
                          ],),
                        SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ", style: TextStyle(fontSize: 18,color: Colors.black54)),

                        GestureDetector(
                            onTap: () {Navigator.pushNamed(context, '/Signup');},
                            child: Text("signup", style: TextStyle(fontWeight: FontWeight.bold))),
                      ],
                    ),
          ]
        ),
                  ),
                ],
              ),
            ],
          ),

        ),
      );

    }}


