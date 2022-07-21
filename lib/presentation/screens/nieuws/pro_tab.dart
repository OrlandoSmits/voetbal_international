import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:voetbal_international/logic/fetch_pro_news_cubit.dart';
import 'package:voetbal_international/presentation/screens/nieuws/widget/nieuws_widget.dart';

class ProTab extends StatefulWidget {
  const ProTab({Key? key}) : super(key: key);

  @override
  State<ProTab> createState() => _ProTabState();
}

class _ProTabState extends State<ProTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          child: ToggleSwitch(
            cornerRadius: 5,
            minWidth: MediaQuery.of(context).size.width,
            initialLabelIndex: 0,
            totalSwitches: 2,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey,
            activeBorders: [
              Border.all(width: 2, color: const Color(0xff009EE0))
            ],
            borderColor: const [Colors.grey],
            borderWidth: 0.5,
            labels: const ['Alle verhalen', 'Mijn interesses'],
            onToggle: (index) {
              if (index == 0) {
                BlocProvider.of<FetchProNewsCubit>(context).fetch();
              } else {
                BlocProvider.of<FetchProNewsCubit>(context)
                    .fetchMyInterestsNews();
              }
            },
          ),
        ),
        BlocBuilder<FetchProNewsCubit, FetchProNewsState>(
            builder: (context, state) {
          if (state.status == FetchProNewsStatus.success) {
            var news = state.news;
            return Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: news.newsItems.length,
                  itemBuilder: (_, i) {
                    return NieuwsWidget(newsItem: news.newsItems[i]);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  )),
            );
          } else {
            return FlutterLogo();
          }
        })
      ],
    );
    return const Text('this is the pro tab');
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchProNewsCubit>(context).fetch();
  }
}
