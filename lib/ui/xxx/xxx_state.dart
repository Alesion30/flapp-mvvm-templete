import 'package:freezed_annotation/freezed_annotation.dart';

part 'xxx_state.freezed.dart';

@freezed
class XXXState with _$XXXState {
  const factory XXXState({
    @Default("") int count,
  }) = _XXXState;
}
