import 'package:flutter/material.dart';
import 'package:goldenhands/pages/tapbar_page.dart';
import 'package:goldenhands/widgets/custom_listtitle.dart';

class HistorialPage extends StatelessWidget {
  const HistorialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TapBarPage(tabs: [
          Tab(text: 'asd'),
          Tab(
            text: 'asd',
          )
        ], pages: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomListile(),
                Divider(),
                CustomListile(),
                Divider(),
                CustomListile(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CustomListile(),
                Divider(),
                CustomListile(),
                Divider(),
                CustomListile(),
                Divider(),
                CustomListile(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
