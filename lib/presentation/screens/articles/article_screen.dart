import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voetbal_international/logic/fetch_article_cubit.dart';
import 'package:voetbal_international/presentation/router/arguments/ArticleArguments.dart';
import 'package:voetbal_international/widgets/articles/author_row.dart';
import 'package:voetbal_international/widgets/icons/bookmark_icon.dart';
import 'package:voetbal_international/widgets/icons/comments_icon.dart';
import 'package:voetbal_international/widgets/icons/pro_icon.dart';
import 'package:voetbal_international/widgets/icons/social_media_icon.dart';
import 'package:voetbal_international/widgets/text/title_text.dart';

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
                              const ProIcon(),
                              TitleText(title: article.title),
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
                                    CommentsIcon(
                                      amountOfComments:
                                          article.amountOfComments,
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
                                  children: const [
                                    BookmarkIcon(),
                                    Spacer(),
                                    SocialMediaIcon(
                                      socialMediaType: SocialMediaType.facebook,
                                    ),
                                    Spacer(),
                                    SocialMediaIcon(
                                      socialMediaType: SocialMediaType.twitter,
                                    ),
                                    Spacer(),
                                    SocialMediaIcon(
                                      socialMediaType: SocialMediaType.whatsapp,
                                    ),
                                    Spacer(flex: 30),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    AuthorRow(
                      author: article.author,
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
