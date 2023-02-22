

class NewBookModel {
  String image;
  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
newBookData.map((item) => NewBookModel(item['image']!)).toList();
//  selected == 0 ? newlyReleased() : selected == 1 ? bestSeller() : trending().toList();
var newBookData = [
  {"image": "assets/images/AtomicHabits.jpg"},
];
