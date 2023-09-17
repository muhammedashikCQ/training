import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/model/i_downloads_repo.dart';

import '../../domain/core/failures/main_failures.dart';
import '../../model/model.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadState.initial()) {
    on<_GetDownloadImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsfailureorsucces: none()));
      final Either<MainFailure, List<Model>> downloadsoption =
          await _downloadsRepo.getDownloadsImages();
          log(downloadsoption.toString());
      emit(
        downloadsoption.fold(
          (failure) => state.copyWith(isLoading: false,
      downloadsfailureorsucces: some(left(failure))),
          (success) => state.copyWith(isLoading: false,
          downloads: success,
          downloadsfailureorsucces: some(Right(success))
          )));
          
    });
  }
}
