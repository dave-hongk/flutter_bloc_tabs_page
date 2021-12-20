import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';

/// {@template tabs_cubit}
/// [Cubit] to handle [PageTab] selections. Emits new [TabState] on changes.
/// {@endtemplate tabs_cubit}
class TabsCubit extends Cubit<TabState> {
  /// {@macro tabs_cubit}
  TabsCubit() : super(TabState());

  /// [PageTab] selected.
  void tabSelected(PageTab tab) {
    if (tab == state.selected) return;
    emit(TabState((b) => b..selected = tab));
  }

  @override
  void onChange(Change<TabState> change) {
    print(change);
    super.onChange(change);
  }
}
