import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_cubit.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_state.dart';
import 'package:flutter_bloc_tabs_page/src/screens/error_page.dart';
import 'package:flutter_bloc_tabs_page/src/screens/page1.dart';
import 'package:flutter_bloc_tabs_page/src/screens/page2.dart';
import 'package:flutter_bloc_tabs_page/src/screens/page3.dart';
import 'package:flutter_bloc_tabs_page/src/screens/page4.dart';
import 'package:flutter_bloc_tabs_page/src/screens/page5.dart';

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
        body: BlocBuilder<TabsCubit, TabState>(
          buildWhen: (prev, cur) => prev.selected != cur.selected,
          builder: (context, tabState) {
            switch(tabState.selected) {
              case PageTab.tab1: return const Page1();
              case PageTab.tab2: return const Page2();
              case PageTab.tab3: return const Page3();
              case PageTab.tab4: return const Page4();
              case PageTab.tab5: return const Page5();
            }
            return const ErrorPage();
          },
        ),
        bottomNavigationBar: BlocBuilder<TabsCubit, TabState>(
          buildWhen: (prev, cur) => prev.selected != cur.selected,
          builder: (context, tabState) {
            return BottomNavigationBar(
              // The type needs to be specified for more than three items,
              // so it does not change to [BottomNavigationBarType.shifiting].
              type: BottomNavigationBarType.fixed,
              currentIndex: PageTab.values.toList().indexOf(tabState.selected),
              onTap: (index) {
                BlocProvider.of<TabsCubit>(context)
                    .tabSelected(PageTab.values.toList()[index]);
              },
              items: PageTab.values.map((tab) {
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
