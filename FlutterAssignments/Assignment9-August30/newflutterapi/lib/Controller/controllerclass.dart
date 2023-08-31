
import 'package:get/get.dart';
import 'package:newflutterapi/Models/sampledata.dart';
import 'package:newflutterapi/Services/demoapi.dart';

class Controller extends GetxController {
  RxList<Sampledata> data = <Sampledata>[].obs;
  
  RxBool isLoading = true.obs;

  void demo()async {
    isLoading(true);
    var x = await DemoapiClass().apicall();
    data(x);
    isLoading(false);
  }
  
}
