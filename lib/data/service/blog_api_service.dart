import 'package:dio/dio.dart';
import 'package:restapi_lesson/data/model/get_all_one_post.dart';
import 'package:restapi_lesson/data/model/get_all_post_respon.dart';

class BlogApiService{
  static const String baseUrl = "http://44.207.161.4:5000";

  late Dio dio;
  BlogApiService(){
    dio = Dio();
  }

  Future<List<GetAllPostRespon>> getallpost()async{
    final responseData = await dio.get("${baseUrl}posts");
    final postlist  = (responseData.data as List).map((e){
      return GetAllPostRespon.fromJson(e);
    }).toList();
    return postlist;
  }

  Future<GetAllOnePost> getonepost(int id)async{
    final responsedata = await dio.get("${baseUrl}/post?id=$id");
    final postonelist = responsedata.data as List;
    final post = GetAllOnePost.fromJson(postonelist[0]);
    return post;
  }
}