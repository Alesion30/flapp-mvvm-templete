import 'dart:math';

import 'package:flapp/data/model/result/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'xxx_repository.dart';

final xxxRepositoryProvider =
    Provider<XXXRepository>((ref) => XXXRepositoryImpl(ref.read));

class XXXRepositoryImpl implements XXXRepository {
  XXXRepositoryImpl(this._reader);
  final Reader _reader;

  @override
  Future<Result<int>> fetch() async {
    return Result.guardFuture(() async {
      await Future.delayed(const Duration(seconds: 2)); // 2秒待機

      final rand = Random();
      return rand.nextInt(100); // 0~100の乱数
    });
  }
}
