class Character{
  String name;
  String height;
  String mass;
  String hair_color;
  String skin_color;
  String eye_color;
  String birth_year;
  String gender;


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
        name: json['name'],
        height: json['height'],
        mass: json['mass'],
        hair_color: json['hair_color'],
        skin_color: json['skin_color'],
        eye_color: json['eye_color'],
        birth_year: json['birth_year'],
        gender: json['gender'],
    );
  }
}