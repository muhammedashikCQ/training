import 'package:get/get.dart';
import 'package:newflutterapi/Models/sampledata1.dart';

import '../Services/demoapi.dart';

class Controller1 extends GetxController
{
  Rx<SampleData1> data = SampleData1().obs;
  
  RxBool isLoading = true.obs;

  void demo(int id)async {
    isLoading(true);
    var y = await DemoapiClass().apicall1(id);
    data(y);
    isLoading(false);
  }

}