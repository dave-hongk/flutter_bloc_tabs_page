import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_cubit.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart' as tabs_state;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabsCubit = TabsCubit();
    return BlocProvider<TabsCubit>.value(
      value: tabsCubit,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Page'),
        ),
        body: Container(),
        bottomNavigationBar: BlocBuilder<TabsCubit, tabs_state.TabState>(
          buildWhen: (prev, cur) => prev.selected != cur.selected,
          builder: (context, tabState) {
            return BottomNavigationBar(
              // The type needs to be specified for more than three items,
              // so it does not change to [BottomNavigationBarType.shifiting].
              type: BottomNavigationBarType.fixed,
              currentIndex:
                  tabs_state.Tab.values.toList().indexOf(tabState.selected),
              onTap: (index) {
                BlocProvider.of<TabsCubit>(context)
                    .tabSelected(tabs_state.Tab.values.toList()[index]);
              },
              items: tabs_state.Tab.values.map((tab) {
                return BottomNavigationBarItem(
                    icon: Icon(Icons.list), label: tab.toString());
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
