import 'package:get/get.dart';
import 'package:social_media_page/Services/apiclass.dart';

import '../Models/get_all.dart';


class GetAllController extends GetxController {
  RxList<GetAll> data = <GetAll>[].obs;
  RxBool isLoading = true.obs;
  void getallcontroller()async {
    isLoading(true);
    var x = await ApiClass().getallapicall();
    data(x);
    isLoading(false);
  }
}
