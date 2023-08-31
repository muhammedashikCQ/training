import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/add_post.dart';

class AddPostController extends GetxController {
  RxList<AddPost> data = <AddPost>[].obs;
  
  RxBool isLoading = true.obs;

  void controlleraddpost()async {
    isLoading(true);
    var x = await ApiClass().addpostapicall();
    data(x);
    isLoading(false);
  }
  
}
