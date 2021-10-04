
class Post {
  late int id;
  late String title;
  late String description;
  late String status;
  late String image;
  late String updated_at;

  Post.fromJson(Map<String, dynamic> parsedJson){
    id = parsedJson['id'];
    title = parsedJson['title'];
    description = parsedJson['description'];
    status = parsedJson['status'];
    image = parsedJson['image'];
    updated_at = parsedJson['updated_at'];
    
  }

  Map<String,dynamic> toMap() {

    return <String, dynamic>{
      'id' : id,
      'title' : title,
      'description' : description,
      'status' : status,
      'image' : image,
      'updated_at' : updated_at,
    };
    
  }
}