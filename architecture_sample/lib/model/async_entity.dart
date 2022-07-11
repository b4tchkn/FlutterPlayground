import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_entity.freezed.dart';

@freezed
class AsyncEntity<T extends Object> with _$AsyncEntity<T> {
  const factory AsyncEntity({
    T? entity,
    @Default(FetchStatus.idling) FetchStatus fetch,
    Object? error,
  }) = _AsyncEntity<T>;
}

enum FetchStatus {
  loading,
  refreshing,
  paging,
  idling,
  ;
}