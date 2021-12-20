import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';

part 'tabs_state.g.dart';

/// {@template tab}
/// Page tab enum for the different tabs.
/// {@endtemplate}
class PageTab extends EnumClass {
  /// Tab 1.
  static const PageTab tab1 = _$tab1;
  /// Tab 2.
  static const PageTab tab2 = _$tab2;
  /// Tab 3.
  static const PageTab tab3 = _$tab3;
  /// Tab 4.
  static const PageTab tab4 = _$tab4;
  /// Tab 5.
  static const PageTab tab5 = _$tab5;

  /// Tab enum values.
  static BuiltSet<PageTab> get values => _$values;

  /// Tab enum value for the given name.
  static PageTab valueOf(String name) => _$valueOf(name);

  const PageTab._(String name) : super(name);
}

/// {@template tab_state}
/// [TabState] represents the current [PageTab] that is selected.
/// Defaults to [PageTab.tab1].
/// {@endtemplate}
abstract class TabState implements Built<TabState, TabStateBuilder> {
  /// Selected [PageTab].
  PageTab get selected;

  /// {@macro tab_state}
  factory TabState([Function(TabStateBuilder b) updates]) = _$TabState;

  TabState._();
}

/// {@template tab_state_builder}
/// Custom [TabStateBuilder] for the [TabState] class to override defaults for
/// the selected field to be tab1.
/// {@endtemplate}
abstract class TabStateBuilder implements Builder<TabState, TabStateBuilder> {
  PageTab selected = PageTab.tab1;

  factory TabStateBuilder() = _$TabStateBuilder;

  TabStateBuilder._();
}