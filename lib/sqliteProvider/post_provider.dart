import 'package:sqflite/sqflite.dart';
import 'package:wtiau_blog/models/post.dart';
import 'package:wtiau_blog/sqliteProvider/provider.dart';

class PostProvider extends Provider{
  String _tableName = 'posts';

  Future<Post> insert(Post post, { conflictAlgorithm : ConflictAlgorithm.ignore}) async {
    post.id = await db.insert(_tableName, post.toMap(), conflictAlgorithm: conflictAlgorithm);
    return post;
  }



  Future<bool> insertAll(List<Post> posts) async {
    await Future.wait(posts.map((post) async {
      await insert(post);
    }));
    return true;
  }

  Future paginate(String page, { int limit:8 }) async {
    var pages = page.split("=");
    List maps = await db.query(_tableName,
      columns: ['id', 'title', 'description', 'image', 'updated_at'],
      limit: limit,
      offset: int.parse(pages[1]) == 1 ? 0 : (int.parse(pages[1]) - 1) * limit
    );

    if(maps.length > 0){
      List<Post> posts =[];
      maps.forEach((post) {
        if (post != null) {
          posts.add(Post.fromJson(post));
        }
      });
      return posts;
    }
    return null;
  }
}