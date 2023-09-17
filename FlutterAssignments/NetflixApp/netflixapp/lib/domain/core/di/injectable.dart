import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt=GetIt.instance;
@InjectableInit()
Future<void> configureInjection() async{
   (getIt,environment:Environment.prod);
}