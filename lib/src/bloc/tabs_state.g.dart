// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabs_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PageTab _$tab1 = const PageTab._('tab1');
const PageTab _$tab2 = const PageTab._('tab2');
const PageTab _$tab3 = const PageTab._('tab3');
const PageTab _$tab4 = const PageTab._('tab4');
const PageTab _$tab5 = const PageTab._('tab5');

PageTab _$valueOf(String name) {
  switch (name) {
    case 'tab1':
      return _$tab1;
    case 'tab2':
      return _$tab2;
    case 'tab3':
      return _$tab3;
    case 'tab4':
      return _$tab4;
    case 'tab5':
      return _$tab5;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PageTab> _$values = new BuiltSet<PageTab>(const <PageTab>[
  _$tab1,
  _$tab2,
  _$tab3,
  _$tab4,
  _$tab5,
]);

class _$TabState extends TabState {
  @override
  final PageTab selected;

  factory _$TabState([void Function(TabStateBuilder)? updates]) =>
      (new TabStateBuilder()..update(updates)).build() as _$TabState;

  _$TabState._({required this.selected}) : super._() {
    BuiltValueNullFieldError.checkNotNull(selected, 'TabState', 'selected');
  }

  @override
  TabState rebuild(void Function(TabStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$TabStateBuilder toBuilder() => new _$TabStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabState && selected == other.selected;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selected.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabState')..add('selected', selected))
        .toString();
  }
}

class _$TabStateBuilder extends TabStateBuilder {
  _$TabState? _$v;

  @override
  PageTab get selected {
    _$this;
    return super.selected;
  }

  @override
  set selected(PageTab selected) {
    _$this;
    super.selected = selected;
  }

  _$TabStateBuilder() : super._();

  TabStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.selected = $v.selected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabState;
  }

  @override
  void update(void Function(TabStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TabState build() {
    final _$result = _$v ??
        new _$TabState._(
            selected: BuiltValueNullFieldError.checkNotNull(
                selected, 'TabState', 'selected'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
