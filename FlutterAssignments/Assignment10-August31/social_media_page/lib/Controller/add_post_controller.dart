import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/add_post.dart';

class AddPostController extends GetxController {
  Rx<AddPost> data = AddPost().obs;
  RxBool isLoading = true.obs;
  void controlleraddpost(String userid,String title,String body)async {
    isLoading(true);
    var x = await ApiClass().addpostapicall(userid,title,body);
    data(x);
    
    isLoading(false);
  }  
}
