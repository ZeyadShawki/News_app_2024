import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/news_app/cubit/cubit.dart';
import 'package:flutter_application_1/layout/news_app/cubit/states.dart';
import 'package:flutter_application_1/modules/widgets/article_list_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sports extends StatelessWidget {
  //const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewStates>(
      listener: (context, state){},
      builder: (context, state){
        var list = NewsCubit.get(context).sports;

        return ArticleListWidget(list:  list, );
      },
    );
  }
}