import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/main_failures.dart';

import 'model.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure,List<Model>>> getDownloadsImages();
}
