import 'package:flutter/material.dart';
import 'package:mthr_flutter/screen/order.dart';
import 'package:mthr_flutter/sqldb.dart';
class Orders extends StatelessWidget {
  GlobalKey<FormState> formstate = GlobalKey() ;
  TextEditingController name =  TextEditingController();
  TextEditingController discrption =  TextEditingController();
  TextEditingController number =  TextEditingController();
  var nameController = TextEditingController();
  var TypeController = TextEditingController();
  var priceController = TextEditingController();
   SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product',style: TextStyle(fontSize: 30),),
    centerTitle: true,
        ),
      body:SingleChildScrollView(
    child:
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Form(
        key: formstate,
        child:
        Stack(
        children: <Widget>[
        Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            SizedBox(height: 5),
              Center(
                child: TextFormField(
                  controller: nameController,
                  onFieldSubmitted: (String value){},
                  onChanged: (String value) {},
                  decoration: InputDecoration(
                    labelText: 'name',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Center(
                child: TextFormField(
                  controller: TypeController,
                  onFieldSubmitted: (String value){},
                  onChanged: (String value) {},
                  decoration: InputDecoration(
                    labelText: 'discrption',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Center(
                child: TextFormField(
                  controller: priceController,
                  onFieldSubmitted: (String value){},
                  onChanged: (String value) {},
                  decoration: InputDecoration(
                    labelText: 'number',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height:20.0 ,),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () async {
               int response =  await sqlDb.insertData('''
               INSERT INTO product ('name' , 'type' , 'price')
               VALUES ("${nameController.text}" , "${discrption.text}" , "${priceController.text}" )
               ''');
               if (response > 0){
                 Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Order()),
                         (route) => false);
               }
               print("add");
                  },
                  child: Text(
                    "Add", style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
                     SizedBox(height: 30,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Capture.PNG', height: 200,),
                      ],
                    ),
        ]
                  )
              ),
]
          ),
              )
      ]
    )

    )
      ),
    );
  }
}
