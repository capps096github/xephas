class XephasMe {
// name
  final String name;

  // preferred name
  final String preferredName;

// email
  final String email;

//  gender
  final String gender;

  // about
  final String about;

// photoUrl
  final String profilePic;

  // date time
  final DateTime birthday;

  XephasMe({
    required this.name,
    required this.preferredName,
    required this.email,
    required this.gender,
    required this.about,
    required this.profilePic,
    required this.birthday,
  });
}

// xephasMe object for XephasMe
XephasMe xephasMe = XephasMe(
  name: 'Mugisa Brian',
  preferredName: 'Cephas',
  email: 'briancephasmuk@gmail.com',
  gender: "He/Him",
  about:
      "Hi, my name is Mugisa Brian, but you can call me Cephas. I'm a software engineer with experience in cross-platform app development using Flutter and a passion for graphics and UX design. I love using my skills and I'm dedicated to developing, designing and creating experiences that improve people's lives. It's nice to meet you!",
  profilePic: 'https://raw.githubusercontent.com/capps096github/AppsArt/master/xephas/xephas_profile.jpg',
  birthday: DateTime(2000, 12, 12),
);
