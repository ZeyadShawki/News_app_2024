import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/news_app/cubit/cubit.dart';
import 'package:flutter_application_1/layout/news_app/cubit/states.dart';
import 'package:flutter_application_1/modules/widgets/article_list_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends StatelessWidget {
  //const Search({Key? key}) : super(key: key);
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: searchController,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                NewsCubit.get(context).getSearch(value);
              },
              decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(
                    Icons.search_outlined,
                  ),
                  border: OutlineInputBorder()),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Search must not be empty';
                }
                return null;
              },
            ),
          ),
          BlocConsumer<NewsCubit, NewStates>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
               var list = NewsCubit.get(context).search;

              return Expanded(
                  child: ArticleListWidget(list: list, isSearch: true));
            },
          ),
        ],
      ),
    );
  }
}
