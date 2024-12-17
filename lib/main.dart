import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/bloc_observer.dart';

import 'package:flutter_application_1/shared/network/local/cache_helper.dart';
import 'package:flutter_application_1/shared/network/remote.dart';
import 'package:flutter_application_1/shared/styles/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout/news_app/cubit/cubit.dart';
import 'layout/news_app/news_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


 

  DioHelper.init();
  await CashHelper.init();

  bool isDark = CashHelper.getBoolean(key: 'isDark');

  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {
  final bool isDark;

  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NewsCubit()
              ..getBusiness()
              ..getSports()
              ..getScience()),
    
      ],
      child:
           MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: lightTheme,
               theme: ThemeData(
   useMaterial3: false,
   primaryColor: Colors.orange,
  primaryColorLight: Colors.orange,

  ),
            home: NewsLayout(),
          
        
      ),
    );
  }
}
