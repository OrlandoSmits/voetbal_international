import 'package:flutter/material.dart';
import 'package:voetbal_international/presentation/screens/nieuws/laatste_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/pro_tab.dart';
import 'package:voetbal_international/presentation/screens/nieuws/vi_tab.dart';
import 'package:voetbal_international/widgets/icons/pro_icon.dart';
import 'package:voetbal_international/widgets/icons/vi_icon.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
          bottom: const TabBar(
            indicatorWeight: 3.0,
            indicatorColor: Color(0xff009EE0),
            tabs: [
              Tab(
                icon: ProIcon(),
              ),
              Tab(
                icon: VIIcon(),
              ),
              Tab(
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
