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
      login: json['login'] ?? "",
      name: json['name']?? "sem nome",
      bio: json['bio'] ?? "sem biografia",
      avatar: json['avatar_url']?? "https://pngimg.com/uploads/github/github_PNG40.png",
    );
  }
}