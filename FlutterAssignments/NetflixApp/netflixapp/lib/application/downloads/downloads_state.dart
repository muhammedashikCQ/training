part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState{
  const factory DownloadState({
    required bool isLoading,
    required List<Model> downloads,
    required Option <Either<MainFailure,List<Model>>>downloadsfailureorsucces

  }) = _DownloadState;
factory DownloadState.initial(){
  return  const DownloadState(
    isLoading: false,
  downloadsfailureorsucces: None(),
  downloads: []
  );
}
}