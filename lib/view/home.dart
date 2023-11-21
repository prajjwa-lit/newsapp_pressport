import 'package:flutter/material.dart';
import 'package:newsapp/controller/fetchNews.dart';
import 'package:newsapp/model/newsArt.dart';
import 'package:newsapp/view/widget/NewsContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  getNews() async {
    NewsArt newsArt = await FetchNews.fetchNews();
    return newsArt;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: FutureBuilder(future: getNews(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.connectionState==ConnectionState.done && snapshot.hasData){
            NewsArt temp = snapshot.data;
            return NewsContainer(imgUrl: temp.imgUrl, newsDes: temp.newsDes, newsCnt: temp.newsCnt, newsHead: temp.newsHead, newsUrl: temp.newsUrl);
          }
          else
            {
              return const CircularProgressIndicator();
            }
        }, ),

    );
  }
}
