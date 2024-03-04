
class UserModel {
  final String? avatarUrl;
  final String? firstName;
  final String? lastName;
  final String? year;
  final String? college;
  final String? course;

  UserModel({
    this.avatarUrl,
    this.firstName,
    this.lastName,
    this.year,
    this.college,
    this.course,
  });

 //CONVERT JSON TO USERMODEL
 factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
  avatarUrl: json['avatar_url'],
  firstName: json['first_name'],
  lastName: json['last_name'],
  year: json['year'],
  college: json['college'],
  course: json['course'],
 );

 //CONVERT USERMODEL TO JSON
 Map<String, dynamic> toJson() => {
    "avatar_url": avatarUrl,
    "first_name": firstName,
    "last_name": lastName,
    "year": year,
    "college": college,
    "course": course
 };
 


}