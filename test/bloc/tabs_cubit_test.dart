import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_cubit.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TabsCubit', () {
    late TabsCubit cubit;
    setUp(() {
      cubit = TabsCubit();
    });
    group('initialization', () {
      test('Initial tab state', () {
        expect(cubit.state, TabState());
      });
    });

    group('tabSelected', () {
      blocTest<TabsCubit, TabState>(
        'transition to new tab emits new state',
        build: () => TabsCubit(),
        act: (cubit) => cubit.tabSelected(PageTab.tab2),
        expect: () => <TabState>[TabState((b) => b..selected = PageTab.tab2)],
      );

      blocTest<TabsCubit, TabState>(
        'same as already selected does not emit new state',
        build: () => TabsCubit(),
        act: (cubit) => cubit.tabSelected(PageTab.tab1),
        expect: () => [],
      );
    });
  });
}
