class Character{
  String? name;
  String? height;
  String? mass;
  String? hair_color;
  String? skin_color;
  String? eye_color;
  String? birth_year;
  String? gender;


  Character({
        required this.name,
        required this.height,
        required this.mass,
        required this.hair_color,
        required this.skin_color,
        required this.eye_color,
        required this.birth_year,
        required this.gender,
    });

  factory Character.fromJson(Map<String, dynamic> json){
    return Character(
        name: json['name']?? "without information",
        height: json['height']?? "without information",
        mass: json['mass']?? "without information",
        hair_color: json['hair_color']?? "without information",
        skin_color: json['skin_color']?? "without information",
        eye_color: json['eye_color']?? "without information",
        birth_year: json['birth_year']?? "without information",
        gender: json['gender']?? "without information",
    );
  }
}