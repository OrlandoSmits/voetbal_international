import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/laatste_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/pro_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/vi_tab.dart';

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
              Tab(
                icon: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                      )),
                  child: const Text(
                    'PRO',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
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
