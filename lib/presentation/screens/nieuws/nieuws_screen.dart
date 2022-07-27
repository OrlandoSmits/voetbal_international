import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/laatste_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/pro_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/vi_tab.dart';
import 'package:voetbal_international/widgets/icon/pro_icon_widget.dart';

class NieuwsScreen extends StatefulWidget {
  const NieuwsScreen({Key? key}) : super(key: key);

  @override
  State<NieuwsScreen> createState() => _NieuwsScreenState();
}

class _NieuwsScreenState extends State<NieuwsScreen> {
  @override
  Widget build(BuildContext context) {
    final availableTabs = [
      const ProTab(),
      const VITab(),
      const LaatsteTab(),
    ];

    return DefaultTabController(
      length: availableTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0.0,
          elevation: 0.0,
          bottom: TabBar(
            indicatorWeight: 3.0,
            indicatorColor: const Color(0xff009EE0),
            tabs: [
              const Tab(
                icon: ProIconWidget(),
              ),
              Tab(
                  icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                    Text('V',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xffE30713),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold)),
                    Text('I',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff009EE0),
                            fontWeight: FontWeight.bold)),
                  ])),
              const Tab(
                  icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ))
            ],
          ),
        ),
        body: TabBarView(
          children: availableTabs,
        ),
      ),
    );
  }
}
