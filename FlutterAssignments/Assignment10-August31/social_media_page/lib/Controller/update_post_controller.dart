import 'package:get/get.dart';
import 'package:social_media_page/Models/update_post.dart';
import 'package:social_media_page/Services/apiclass.dart';




class UpdatePostController extends GetxController {
  Rx<UpdatePost> data = UpdatePost().obs;
  
  RxBool isLoading = true.obs;

  void updatepostcontroller(int postid,String title,String body)async {
    isLoading(true);
    var x = await ApiClass().updatepostapicall(postid,title,body);
    data(x);
    isLoading(false);
  }
  
}
