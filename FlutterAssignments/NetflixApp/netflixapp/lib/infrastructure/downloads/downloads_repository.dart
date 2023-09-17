import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/api_end_points.dart';
import 'package:netflixapp/domain/core/failures/main_failures.dart';
import 'package:netflixapp/model/i_downloads_repo.dart';
import 'package:netflixapp/model/model.dart';


@LazySingleton(as:IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo{
  @override
  Future<Either<MainFailure, List<Model>>> getDownloadsImages() async{
    try
    {
      final  response=await Dio(BaseOptions()).get(ApiEndPoint.downloads);
      if(response.statusCode==200)
      {
        final downloadsList=(response.data['results'] as List).map((e){
          return Model.fromJson(e);
        }).toList();
        
          print(downloadsList);
          return Right(downloadsList);
      }
      else
      {
        return const Left(MainFailure.serverFailure());
      }
    }
    catch(e)
    {
      return const Left(MainFailure.clientFailure());

    }
  }

}