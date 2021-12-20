import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Tab', () {
    test('value comparison', () {
      expect(Tab.tab1, Tab.tab1);
      expect(Tab.tab2, Tab.tab2);
      expect(Tab.tab3, Tab.tab3);
      expect(Tab.tab4, Tab.tab4);
      expect(Tab.tab5, Tab.tab5);
      expect(Tab.tab1 == Tab.tab2, isFalse);
    });

    test('values', () {
      expect(Tab.values.toList(),
          [Tab.tab1, Tab.tab2, Tab.tab3, Tab.tab4, Tab.tab5]);
    });
  });

  group('TabState', () {
    test('value comparison', () {
      final state1 = TabState((b) => b..selected = Tab.tab1);
      final state2 = TabState((b) => b..selected = Tab.tab1);
      final state3 = TabState((b) => b..selected = Tab.tab2);
      final state4 = TabState((b) => b..selected = Tab.tab2);
      expect(state1, state2);
      expect(state3, state4);
      expect(state1 == state3, isFalse);
    });

    test('defaults to tab1', () {
      final state = TabState();
      expect(state.selected, Tab.tab1);
    });
  });
}
