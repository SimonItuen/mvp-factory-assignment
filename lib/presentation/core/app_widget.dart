import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviz/application/core/connectivity/connectivity_bloc.dart';
import 'package:moviz/injection.dart';
import 'package:moviz/presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();

   AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ConnectivityBloc>()
        ..add(const ConnectivityEvent.monitorConnection()),
      child: MaterialApp.router(
          title: 'Moviz',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blue),
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate()),
    );
  }
}
