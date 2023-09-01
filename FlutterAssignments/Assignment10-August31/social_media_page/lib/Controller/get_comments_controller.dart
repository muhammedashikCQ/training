import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/get_comments.dart';


class GetCommentsController extends GetxController {
  RxList<GetComments> data = <GetComments>[].obs;
  
  RxBool isLoading = true.obs;

  void getcomments(int postid)async {
    isLoading(true);
    var x = await ApiClass().getcommentsapicall(postid);
    data(x);
    isLoading(false);
  }
  
}
