class NewBookModel {
  String image;
  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
newBookData.map((item) => NewBookModel(item['image']!)).toList();
var newBookData = [
  {"image": "assets/images/AtomicHabits.jpg"},
];
