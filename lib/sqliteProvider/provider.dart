

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class Provider {
  late Database db;
  late String _path; 

  Future open({ String dbName : 'blog.db' }) async {
    var databasesPath = await getDatabasesPath();
    _path = join(databasesPath, dbName);


    db = await openDatabase(_path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
            create table posts ( 
              id integer primary key autoincrement, 
              title text not null,
              description text not null,
              status text not null,
              image text not null,
              updated_at text not null)
            ''');


          // await db.execute('''
          //   create table users  ( 
          //     phone text primary key autoincrement, 
          //     tokens_access text not null,
          //     token_refresh text not null)
          //   ''');
    });
  }

  Future close() async => db.close();
}