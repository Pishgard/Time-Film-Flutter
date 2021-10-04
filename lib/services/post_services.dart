import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wtiau_blog/models/post.dart';
import 'package:wtiau_blog/sqliteProvider/post_provider.dart';

import '../helper.dart';

class PostService {

  static Future getPost(String page) async {

    if (await checkConnectionInternet()) {
      return await _getAllProductsFromNetwork(page);
    } else {
      return await _getAllProductFromSqlite(page);
    }

  }


  static Future _getAllProductsFromNetwork(String page) async {
    final response = await http.get(Uri.parse(page));



    if (response.statusCode == 200){
      String source = Utf8Decoder().convert(response.bodyBytes);
      // Convert to your class instance...
      var responsBody = json.decode(source);


      List<Post> posts =[];
      responsBody['results'].forEach((item) {
        posts.add(Post.fromJson(item));
      });

      await _saveAllProductsIntoSqlite(posts);
      return{
        'count': responsBody['count'],
        'next_page': responsBody['next'],
        'previous_page': responsBody['previous'],
        'posts': posts,
      };

    } else {
      return null;
    }
  }

  static Future _getAllProductFromSqlite(String page) async {
    var db = PostProvider();
    await db.open();

    List<Post> posts = await db.paginate(page);

    await db.close();

    return{
        'next_page': page,
        'posts': posts,
    };

  }

  static Future<bool> _saveAllProductsIntoSqlite(List<Post> posts) async{
    var db = PostProvider();
    await db.open();

    await db.insertAll(posts);
    await db.close();
    return true;
  }

}