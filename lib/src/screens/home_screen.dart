import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_cubit.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';

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
        bottomNavigationBar: BlocBuilder<TabsCubit, TabState>(
          buildWhen: (prev, cur) => prev.selected != cur.selected,
          builder: (context, tabState) {
            return BottomNavigationBar(
              // The type needs to be specified for more than three items,
              // so it does not change to [BottomNavigationBarType.shifiting].
              type: BottomNavigationBarType.fixed,
              currentIndex:
                  PageTab.values.toList().indexOf(tabState.selected),
              onTap: (index) {
                BlocProvider.of<TabsCubit>(context)
                    .tabSelected(PageTab.values.toList()[index]);
              },
              items:
              PageTab.values.map((tab) {
                return BottomNavigationBarItem(
                    icon: const Icon(Icons.list), label: tab.toString());
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
