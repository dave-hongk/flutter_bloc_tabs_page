import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tabs_page/src/bloc/tabs_cubit.dart';
import 'package:flutter_bloc_tabs_page/src/view/tabs_form.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TabsCubit>(
        create: (_) => TabsCubit(),
      child: const TabsForm(),
    );
  }
}
