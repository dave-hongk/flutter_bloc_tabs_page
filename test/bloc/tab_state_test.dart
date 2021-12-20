import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tab', () {
    test('value comparison', () {
      expect(PageTab.tab1, PageTab.tab1);
      expect(PageTab.tab2, PageTab.tab2);
      expect(PageTab.tab3, PageTab.tab3);
      expect(PageTab.tab4, PageTab.tab4);
      expect(PageTab.tab5, PageTab.tab5);
      expect(PageTab.tab1 == PageTab.tab2, isFalse);
    });

    test('values', () {
      expect(PageTab.values.toList(),
          [PageTab.tab1, PageTab.tab2, PageTab.tab3, PageTab.tab4, PageTab.tab5]);
    });
  });

  group('TabState', () {
    test('value comparison', () {
      final state1 = TabState((b) => b..selected = PageTab.tab1);
      final state2 = TabState((b) => b..selected = PageTab.tab1);
      final state3 = TabState((b) => b..selected = PageTab.tab2);
      final state4 = TabState((b) => b..selected = PageTab.tab2);
      expect(state1, state2);
      expect(state3, state4);
      expect(state1 == state3, isFalse);
    });

    test('defaults to tab1', () {
      final state = TabState();
      expect(state.selected, PageTab.tab1);
    });
  });
}
