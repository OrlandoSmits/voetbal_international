import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voetbal_international/logic/fetch_article_cubit.dart';
import 'package:voetbal_international/presentation/router/arguments/ArticleArguments.dart';

class ArticleScreen extends StatelessWidget {
  static const routeName = "/article";

  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final articleArguments =
        ModalRoute.of(context)!.settings.arguments as ArticleArguments;
    BlocProvider.of<FetchArticleCubit>(context).fetch(articleArguments.id);

    return BlocBuilder<FetchArticleCubit, FetchArticleState>(
      builder: (context, state) {
        if (state.status == FetchArticleStatus.success) {
          var article = state.article;
          return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (ctx, innerBoxIsScrolled) {
                return [
                  const SliverAppBar(
                    backgroundColor: Colors.white,
                    iconTheme: IconThemeData(color: Color(0xff009EE0)),
                    elevation: 0.0,
                    floating: false,
                    expandedHeight: 56,
                  )
                ];
              },
              body: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  children: [
                    Image.network(article.image),
                    Container(
                      color: Colors.black87,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Transform(
                            transform: Matrix4.skewY(-0.06),
                            child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.black,
                                child: Column(
                                  children: const [],
                                )),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 2),
                                    color: Colors.black,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                    )),
                                child: const Text(
                                  'PRO',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  article.title,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 22.0),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 16.0, top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.access_time_outlined,
                                      color: Colors.grey,
                                      size: 15.0,
                                    ),
                                    const Spacer(),
                                    Text(
                                      article.time,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const Spacer(),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        const Icon(
                                          Icons.mode_comment_outlined,
                                          semanticLabel: 'Hello?',
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(bottom: 4),
                                          child: Text(
                                            article.amountOfComments.toString(),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 30),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 16.0, top: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white,
                                            size: 15,
                                          ),
                                          Text(
                                            'Opslaan',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade600,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Icon(
                                        Icons.facebook_rounded,
                                        color: Colors.blueAccent,
                                        size: 20,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade600,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Icon(
                                        Icons.ac_unit,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade600,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20))),
                                      child: const Icon(
                                        Icons.whatsapp_rounded,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    const Spacer(flex: 30),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        children: [
                          const Text(
                            "Door ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(article.author.name),
                          Container(
                            margin: const EdgeInsets.only(left: 4),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  NetworkImage(article.author.image),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Text('Heel veel text hier straks'),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const FlutterLogo();
        }
      },
    );
  }
}
