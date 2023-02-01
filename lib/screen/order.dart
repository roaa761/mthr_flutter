import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mthr_flutter/sqldb.dart';
import '../widget/my_drawr.dart';
class Order extends StatefulWidget {

  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}
class _OrderState extends State<Order> {
  SqlDb sqlDb = SqlDb();
  Future<List<Map>> readDate() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM product"

    );
    print("&&&&&&&&&&&&&&&&&&&&&&&&&&&");
    print(response.length);
    return response;
  }
 // read() async {
   // await readDate();
  //}
  //@override
 // void initState() {
  //  print("*******");
    //read();
   // super.initState();
 // }
  @override
  Widget build(BuildContext context) {
    var response;
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
        elevation: 0.0,
        title:
        Text('Order', style: TextStyle(fontSize: 30, color: Colors.white
        ),
        ),
        actions: [IconButton(onPressed: () {Navigator.pushNamed(context, "/For");}, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),)],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/Orders");
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView(
            children: [
              FutureBuilder(
                  future: readDate(),
                  builder:
                      (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: snapshot.data!.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    title: Text(
                                        "${snapshot
                                            .data![index]['name']}"),
                                    subtitle: Text(
                                        "${snapshot
                                            .data![index]['type']}"),
                                    trailing: Text(
                                        "${snapshot
                                            .data![index]['number']}"),
     ),);
                              });
                        }
                        return Center(child: const CircularProgressIndicator(),);
                      }
              )
            ]
        ),
      ),
    );
  }

}

