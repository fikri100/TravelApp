class PopularDestinationModel {
  String name;
  String country;
  String image;

  PopularDestinationModel(this.name, this.country, this.image);
}

List<PopularDestinationModel> populars = popularsData
    .map((item) =>
        PopularDestinationModel(item['name'], item['country'], item['image']))
    .toList();

var popularsData = [
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/indonesia.png"
  },
  {"name": "Paris", "country": "France", "image": "assets/images/paris.png"},
  {"name": "Pisa", "country": "Italy", "image": "assets/images/italia.png"},
  {
    "name": "Bali",
    "country": "Indonesia",
    "image": "assets/images/indonesia.png"
  },
  {"name": "Paris", "country": "France", "image": "assets/images/paris.png"},
  {"name": "Pisa", "country": "Italy", "image": "assets/images/italia.png"},
];
