import 'package:flutter/material.dart';
import 'package:jujiiz_client/tab_first_page.dart';
import 'package:jujiiz_client/tab_second_page.dart';
import 'package:jujiiz_client/tab_third_page.dart';
import 'package:nud_core/common_widgets/nud_tab_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NudTabPage(
        items: const [
          NudTabItem(
            pageContent: TabFirstPage(),
            tabIndicatorActiveImagePath: 'assets/images/ic_tab_1_active.png',
            tabIndicatorInactiveImagePath: 'assets/images/ic_tab_1_inactive.png',
            indicatorDotColor: Colors.blue,
          ),
          NudTabItem(
            pageContent: TabSecondPage(),
            tabIndicatorActiveImagePath: 'assets/images/ic_tab_1_active.png',
            tabIndicatorInactiveImagePath: 'assets/images/ic_tab_1_inactive.png',
            indicatorDotColor: Colors.blue,
          ),
          NudTabItem(
            pageContent: TabThirdPage(),
            tabIndicatorActiveImagePath: 'assets/images/ic_tab_1_active.png',
            tabIndicatorInactiveImagePath: 'assets/images/ic_tab_1_inactive.png',
            indicatorDotColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
