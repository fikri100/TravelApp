class TravlogModel {
  String name;
  String content;
  String place;
  String image;

  TravlogModel(this.name, this.content, this.place, this.image);
}

List<TravlogModel> travlogs = travlogsData
    .map((item) => TravlogModel(
        item['name'], item['content'], item['place'], item['image']))
    .toList();

var travlogsData = [
  {
    "name": "Bali",
    "content":
        "Bali was wonderfull place. Bali have so much wonderfull place, and the food was so delisious. I will visit bali again next year. See You!🙌 ",
    "place": "Bali, Indonesia",
    "image": "assets/images/bali.png"
  },
  {
    "name": "Yogyakarta",
    "content":
        "Yogyakarta was wonderfull place. Yogyakarta have so much wonderfull place, and the food was so delisious. I will visit Yogyakarta again next year. See You!🙌 ",
    "place": "Yogyakarta, Indonesia",
    "image": "assets/images/jogja.png"
  },
  {
    "name": "Paris",
    "content":
        "Paris was wonderfull place. Paris have so much wonderfull place, and the food was so delisious. I will visit Paris again next year. See You!🙌 ",
    "place": "Paris, France",
    "image": "assets/images/eiffel.png"
  },
  {
    "name": "Italy",
    "content":
        "Italy was wonderfull place. Italy have so much wonderfull place, and the food was so delisious. I will visit Italy again next year. See You!🙌 ",
    "place": "Italy",
    "image": "assets/images/pisa.png"
  },
];
