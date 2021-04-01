class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/discount1.png"},
  {"image": "assets/images/discount2.png"},
  {"image": "assets/images/discount3.png"},
];
