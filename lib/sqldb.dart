import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SqlDb {
  static Database? _db ;
  Future<Database?> get db async {
    if (_db == null){
      _db  = await intialDb() ;
      return _db ;
    }else {
      return _db ;
    }
  }
  intialDb() async {
    String databasepath = await getDatabasesPath() ;
    String path = join(databasepath , 'mthr.db') ;
    Database mydb = await openDatabase(path , onCreate: _onCreate , version: 3  , onUpgrade:_onUpgrade ) ;
    return mydb ;
  }
  _onUpgrade(Database db , int oldversion , int newversion ) {
    print("onUpgrade =====================================") ;
  }
  _onCreate(Database db , int version) async {
    Batch batch = db.batch();
    batch.execute('''
  CREATE TABLE "product" (
  "name" TEXT ,
  "type" TEXT ,
  "price" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT
  )
 ''') ;
    batch.execute('''
  CREATE TABLE "users" (
  "email" TEXT ,
  "name" TEXT NOT NULL,
  "password" TEXT NOT NULL ,
  "mobilemamber" INTEGER  NOT NULL PRIMARY KEY  AUTOINCREMENT
  )
 ''') ;
    await batch.commit();
    print(" onCreate =====================================") ;
  }
  readData(String sql) async {
    Database? mydb = await db ;
    List<Map> response = await  mydb!.rawQuery(sql);
    return response ;
  }
  insertData(String sql) async {
    Database? mydb = await db ;
    int  response = await  mydb!.rawInsert(sql);
    return response ;
  }
  updateData(String sql) async {
    Database? mydb = await db ;
    int  response = await  mydb!.rawUpdate(sql);
    return response ;
  }
  deleteData(String sql) async {
    Database? mydb = await db ;
    int  response = await  mydb!.rawDelete(sql);
    return response ;
  }

  mydeleteDatabase() async {
    String databasepath = await getDatabasesPath() ;
    String path = join(databasepath , 'mthr.db') ;
    await deleteDatabase(path) ;
  }
// SELECT
// DELETE
// UPDATE
// INSERT
}


// SELECT
// DELETE
// UPDATE
// INSERT

