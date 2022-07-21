import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vi_repository/vi_repository.dart';
import 'package:voetbal_international/logic/fetch_pro_news_cubit.dart';
import 'package:voetbal_international/presentation/router/app_router.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(VoetbalInternationalApp(
      appRouter: AppRouter(), viRepository: VIRepository())));
}

class VoetbalInternationalApp extends StatelessWidget {
  final AppRouter appRouter;
  final VIRepository viRepository;

  const VoetbalInternationalApp({
    Key? key,
    required this.appRouter,
    required this.viRepository,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => viRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<FetchProNewsCubit>(
            create: (_) => FetchProNewsCubit(viRepository),
          )
        ],
        child: MaterialApp(
          title: 'Voetbal International',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
