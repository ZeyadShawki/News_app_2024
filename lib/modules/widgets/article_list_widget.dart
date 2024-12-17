import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/widgets/article_item_widget.dart';
import 'package:flutter_application_1/modules/widgets/my_divider.dart';

class ArticleListWidget extends StatelessWidget {
  const ArticleListWidget({super.key, required this.list,this.isSearch=false});
 final bool isSearch ;
 final List<dynamic> list;
  @override
  Widget build(BuildContext context) {
    return list.length > 0?
   ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => ArticleItemWidget(article:  list[index], ),
        separatorBuilder: (context, index) => MyDividerWidget(),
        itemCount: 10,
      ) :
    isSearch
          ? Container()
          : Center(
              child: CircularProgressIndicator(),
            )
    
    ;
  }



}