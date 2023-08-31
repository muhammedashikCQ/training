import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/get_single.dart';

class GetSingleController extends GetxController {
  RxList<GetSingle> data = <GetSingle>[].obs;
  
  RxBool isLoading = true.obs;

  void controllergetsingle(int postid)async {
    isLoading(true);
    var x = await ApiClass().getsingleapicall(postid);
    data(x);
    isLoading(false);
  }
  
}
