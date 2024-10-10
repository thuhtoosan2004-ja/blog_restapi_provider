import 'package:restapi_lesson/data/model/get_all_post_respon.dart';

abstract class GetAllPostState {

}

class GetAllPostLoading extends GetAllPostState{

}

class GetAllPostSuccess extends GetAllPostState{
  final List<GetAllPostRespon> getallpost;
  GetAllPostSuccess(
    this.getallpost
  );
}

class GetAllPostError extends GetAllPostState{
  final String error;
  GetAllPostError(
    this.error
  );
}