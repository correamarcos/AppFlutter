class UserGit{
  String login;
  String name;
  String bio;
  String avatar;


  UserGit({
    required this.login,
    required this.name,
    required this.bio,
    required this.avatar
  });

  factory UserGit.fromJson(Map<String, dynamic> json){
    return UserGit(
      login: json['login'],
      name: json['name']?? "<Sem nome>",
      bio: json['bio'],
      avatar: json['avatar_url']
    );
  }
}