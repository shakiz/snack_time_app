class SnackItem {
  String title;
  String snackBannerUrl;
  bool? isSaved;
  bool? isBookmarked;
  List<String> tags;
  String? createdAt;
  String author;
  String? authorProfileImgUrl;

  SnackItem(this.title, this.snackBannerUrl, this.isSaved, this.isBookmarked,
      this.tags, this.createdAt, this.author, this.authorProfileImgUrl);
}
