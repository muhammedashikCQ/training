import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/add_post.dart';
import '../Models/get_all.dart';


class HomepageController extends GetxController {
  RxList<GetAll> data = <GetAll>[].obs;
  RxList<AddPost> post = <AddPost>[].obs;

  RxBool isLoading = true.obs;
  void getallcontroller()async {
    isLoading(true);
    var x = await ApiClass().getallapicall();
    data(x);
    isLoading(false);
  }
  
}
