class Animal {
  final String name;
  final String title;
  final String image;

  Animal(this.name, this.title, this.image);
}

class Animal1 {
  final int id;
  final String name;
  final String status;
  final double population;
  final String sciName;
  final double weight;
  final int length;
  final String habitats;
  final String places;
  final String desc;
  final List<String> images;
  final String threatTitle;
  final List<String> threatBody;

  Animal1({
    this.id,
    this.name,
    this.status,
    this.population,
    this.sciName,
    this.weight,
    this.length,
    this.habitats,
    this.places,
    this.desc,
    this.images,
    this.threatTitle,
    this.threatBody,
  });

  Animal1.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        status = json['status'],
        population = json['population'],
        sciName = json['sci_name'],
        weight = json['weight'],
        length = json['length'],
        habitats = json['habitats'],
        places = json['places'],
        desc = json['desc'],
        images = json['images'].cast<String>(),
        threatTitle = json['threat_title'],
        threatBody = json['threat_body'].cast<String>();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'status': status,
        'population': population,
        'sci_name': sciName,
        'weight': weight,
        'length': length,
        'habitats': habitats,
        'places': places,
        'desc': desc,
        'images': images,
        'threat_title': threatTitle,
        'threat_body': threatBody,
      };
}

/* {
    "id": 4,
    "name": "fred",
    "status": "fred",
    "population": 400.5,
    "sci_name": "fred",
    "weight": 45,
    "length": 10,
    "habitats": "fred",
    "places": "fred",
    "desc": "fred",
    "images": [
        "fred",
        "fred2",
        "fred3"
    ],
    "threat_title": "fred",
    "threat_body": [
        "fred",
        "fred2",
        "fred3"
    ]
} */
