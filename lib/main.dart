import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';
import 'package:moviz/injection.dart';
import 'package:moviz/presentation/core/app_widget.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<MovieDocument>(MovieDocumentAdapter());
  configureInjection(Environment.prod);
  runApp(AppWidget());
}