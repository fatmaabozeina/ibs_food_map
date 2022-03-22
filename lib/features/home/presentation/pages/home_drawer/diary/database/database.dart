import 'package:sqflite/sqflite.dart';

var database;
void createDatabase() async {
  database = await openDatabase('calendar.db', version: 1,
      onCreate: (database, version) {
    print('database created');
    database
        .execute(
            'CREATE TABLE notes(id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT)')
        .then((value) {
      print('table created');
    }).catchError((onError) {
      print('error while creating table');
    });
  }, onOpen: (database) {
    print('database opened');
    // getDataFromDatabase(database);
  });
}

Future insertToDatabase() async {
  await database.transaction((txn) {
    txn
        .rawInsert(
            'INSERT INTO notes(title, date, time,status) VALUES("apple","today","currenttime","new")')
        .then((value) {
      print('$value inserted successfully');
    }).catchError(() {
      print('error while inserting data');
    });
    return null;
  });
}

// void getDataFromDatabase(database) async {
//   List<Map> notes = await database.rawQuery('SELECT * FROM notes');
//   print('get get $notes');
// }
