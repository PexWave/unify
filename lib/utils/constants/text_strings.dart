class TTexts {
  static const String onBoardingTitle = "Choose an apartment";
  static const String onBoardingTitle2 = "Chat with owner";
  static const String onBoardingTitle3 = "Get to know your potential roommate";


  static const String onBoardingSubTitle = "Welcome to RoomBuddy! where you can find your perfect roommate!";
  static const String onBoardingSubTitle2 = "Talk to the landlord for room vacancies";
  static const String onBoardingSubTitle3 = "Please be careful for your own risk on choosing a roommate - Your safety is our Priority!";

  static const String homeAppBarTitle = "Looking for an apartment?";
  static const String homeAppBarSubTitle = "Sarhan Asakil";

  //Authentication texts
  static const String loginTitle = "Sign in";
  static const String signupTitle = "Sign up";
  static const String orSignInWith = "or sign in with";
  static const String orSignUpWith = "or sign up with";
  static const String password = "Password";
  static const String newPassword = "New password";
  static const String confirmPassword = "Confirm password";

  static const String createAccount = "Create account";
  static const String alreadyHaveAnAccount = "Already have an account?";
  static const String yourAccountCreatedTitle = "You have been registered!";
  static const String yourAccountCreatedSubtitle = "Please verify your email";

  static const String tContinue = "Continue";
  static const String confirmEmail = "Confirm Email";
  static const String confirmEmailSubtitle = "Please confirm your email address";
  static const String resendEmail = "Resend email";

  static const String iAgreeTo = "I agree to";
  static const String privacyPolicy = "Privacy policy";
  static const String termsOfUse = "Terms of use";
  static const String verificationCode = "verification code";
  static const String reseneEmail = "Resend email";
  static const String resendEmailIn = "Resend email in";

  static const String forgotPassTitle = "Forgot password?";

  static const String loginWithTitle = "Login with";

  static const String firstName = "First Name";
  static const String lastName = "Last Name";
  static const String email = "Wmsu Email";

  static const String college = "college";
  static const String phoneNo = "phone number";

  static const String rememberMe = "Remember Me";


  //College
  static const String collegeText = "College";
  //courses
  static const String courseText = "Course";
  //year
  static const String studentYear = "Year";

  //Course List
  static const List<String> studentYears = ['1', '2', '3', '4'];

  //
}

class TCollegeWithCourses {
  final String name;
  final List<String> courses;

  const TCollegeWithCourses(this.name, this.courses);

  static List<String> get collegeNames {
    return collegesWithCourses.map((college) => college.name).toList();
  }

static List<String> getcollegeCourses(String collegeName) {
  return collegesWithCourses
      .where((college) => college.name == collegeName)
      .expand((college) => college.courses)
      .toList();
}
}

  const List<TCollegeWithCourses> collegesWithCourses = [
  TCollegeWithCourses('College of Liberal Arts', ['Literature', 'History', 'Philosophy']),
  TCollegeWithCourses('College of Engineering', ['Computer Science', 'Mechanical Engineering', 'Electrical Engineering']),
  TCollegeWithCourses('College of Nursing', ['BS Nursing', 'Registered Nurse Program']),
];