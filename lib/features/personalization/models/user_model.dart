class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String email;
  String phoneNumber;
  String profilePicture;


  //Constructor for user model

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture
  });

  String get fullName => '$firstName $lastName';

  //Static function to create an empty user model
  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', email: '', phoneNumber: '', profilePicture: '');

  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'PhoneNumber':phoneNumber,
      'ProfilePicture':profilePicture
    };
  }
}