import 'package:flutter/material.dart';
class Sender extends StatelessWidget {
  var FirstNameController = TextEditingController();
  var LastNameController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  var AddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
        child:
        Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Stack(
    children: <Widget>[
    Center(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        SizedBox(height: 5),
    const Text(
    'sender',
    style: TextStyle(
    color: Colors.blueAccent,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(
    height: 16,),
          Center(
            child: TextFormField(
              controller: FirstNameController,
              onFieldSubmitted: (String value){},
              onChanged: (String value) {},
              decoration: InputDecoration(
                labelText: 'Maria',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.person,color: Colors.blueAccent,),
              ),
            ),
          ),
          Center(
            child: TextFormField(
              controller: LastNameController,
              onFieldSubmitted: (String value){},
              onChanged: (String value) {},
              decoration: InputDecoration(
                labelText: 'Motlak',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.person,color: Colors.blueAccent,),
              ),
            ),
          ),

          Center(
            child: TextFormField(
              controller: PhoneNumberController,
              onFieldSubmitted: (String value){},
              onChanged: (String value) {},
              decoration: InputDecoration(
                labelText: '0935611859',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.phone,color: Colors.blueAccent,),
              ),
            ),
          ),
    ]
        ),
        ),
    ],
    ),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text(
    'consignee',
    style: TextStyle(
    color: Colors.lightBlueAccent,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ]
    ),
    SizedBox(height: 10,),
    Center(
    child: TextFormField(
      controller: LastNameController,
    onFieldSubmitted: (String value){},
    onChanged: (String value) {},
    decoration: InputDecoration(
    labelText: 'Shahad',
    border: InputBorder.none,
    prefixIcon: Icon(Icons.person_rounded,color: Colors.lightBlueAccent,),
    ),
    ),
    ),
    Center(
    child: TextFormField(
      controller: FirstNameController,
    onFieldSubmitted: (String value){},
    onChanged: (String value) {},
    decoration: InputDecoration(
    labelText: 'Othman',
    border: InputBorder.none,
    prefixIcon: Icon(Icons.person,color: Colors.lightBlueAccent,),
    ),
    ),
    ),
          Center(
            child: TextFormField(
              controller: AddressController,
              onFieldSubmitted: (String value){},
              onChanged: (String value) {},
              decoration: InputDecoration(
                labelText: 'Damuscas,Barza',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.account_balance,color: Colors.lightBlueAccent,),
              ),
            ),
          ),
    Center(
    child: TextFormField(
      controller: PhoneNumberController,
    onFieldSubmitted: (String value){},
    onChanged: (String value) {},
    decoration: InputDecoration(
    labelText: '0937998072',
    border: InputBorder.none,
    prefixIcon: Icon(Icons.phone,color: Colors.lightBlueAccent,),
    ),
    ),
    ),
    SizedBox(height:20.0 ,),
    Container(
    width: double.infinity,
    color: Colors.indigo,
    child: MaterialButton(
    onPressed: () {
      Navigator.pushNamed(context, "/Ord");
    },
    child: Text(
    "Send", style: TextStyle(color: Colors.white),
    ),
    ),
    ),
    ]
    )
        )
        )
    );
  }
}
