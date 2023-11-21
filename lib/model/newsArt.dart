class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imgUrl,
        required this.newsCnt,
        required this.newsDes,
        required this.newsHead,
        required this.newsUrl});

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
        imgUrl: article["urlToImage"] ?? "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vskills.in%2Fcertification%2Fblog%2Fstructure-of-a-news-report%2F&psig=AOvVaw1PYDjJ6t7dIffPoUcXpK5g&ust=1700418975332000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKjslLmYzoIDFQAAAAAdAAAAABAE",
        newsCnt: article["content"] ?? ":/",
        newsDes: article["description"] ?? ":/",
        newsHead: article["title"]  ?? ":/",
        newsUrl: article["url"] ?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en");
  }
}