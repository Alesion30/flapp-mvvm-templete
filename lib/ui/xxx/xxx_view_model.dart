import 'package:flapp/data/repository/xxx/xxx_repository.dart';
import 'package:flapp/data/repository/xxx/xxx_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'xxx_state.dart';

final xxxViewModelProvider =
    StateNotifierProvider.autoDispose<XXXViewModel, AsyncValue<XXXState>>(
  (ref) => XXXViewModel(ref: ref),
);

class XXXViewModel extends StateNotifier<AsyncValue<XXXState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  XXXViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  // xxxRepository
  late final XXXRepository xxxRepository = _ref.read(xxxRepositoryProvider);

  // 初期化
  Future<void> load() async {
    final result = await xxxRepository.fetch();
    result.when(
      success: (data) {
        state = AsyncValue.data(
          XXXState(count: data),
        );
      },
      failure: (error) {
        state = AsyncValue.error(error);
      },
    );
  }

  // カウントを+1
  void increment() {
    final count = state.value!.count;
    state = AsyncValue.data(
      XXXState(count: count + 1),
    );
  }
}
