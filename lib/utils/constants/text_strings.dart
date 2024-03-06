class TTexts {
  static const String onBoardingTitle = "Choose an apartment";
  static const String onBoardingTitle2 = "Chat with owner";
  static const String onBoardingTitle3 = "Get to know your potential roommate";


  static const String onBoardingSubTitle = "Welcome to RoomBuddy! where you can find your perfect roommate!";
  static const String onBoardingSubTitle2 = "Talk to the landlord for room vacancies";
  static const String onBoardingSubTitle3 = "Please be careful for your own risk on choosing a roommate - Your safety is our Priority!";

  static const String homeAppBarTitle = "Looking for an apartment?";
  static const String homeAppBarSubTitle = "Sarhan Asakil";

  static const String seeMoreText = "see more";

  //HOME FEESD TEXTS
  static const String uploadPhotoOrVideo = "Upload Photos/Video";
  static const String createAnOrganization = "Create an organization";
  static const String uploadMerch = "Upload a Merch";

  //UPLOAD TEXTS
  static const String chooseProfilePicture = "Choose Profile Picture";
  static const String title = "Title...";
  static const String description = "Description";
  static const String photos = "Photos";
  static const String videos = "Videos";
  static const String choose = "Choose";
  static const String or = "or";
  static const String hashtags = "Hashtags";
  static const String uploadText = "Upload";
  static const String create = "Create";

  //MERCH
  static const String merchName = "Merch Name";
  static const String merchPrice = "Merch Price";

  //ORGANIZATION
  static const String organizationName = "Organization Name";
  static const String organizationBio = "Organization Bio";

  // USER PROFILE TEXTS
  static const String changePhotoText = 'Change photo';
  static const String followText = 'Follow';
  static const String messageText = 'Message';
  static const String following = "Following";
  static const String follower = "Follower";
  static const String likes = "likes";
  static const String upload = "uploads";
  static const String createOrganization = "Create organization";



  //Authentication texts
  static const String loginTitle = "Sign in";
  static const String signupTitle = "Sign up";
  static const String orSignInWith = "or sign in with";
  static const String orSignUpWith = "or sign up with";
  static const String password = "Password";
  static const String newPassword = "New password";
  static const String confirmPassword = "Confirm password";
  static const String logOut = 'Logout';

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

  //SAMPLE TEXT
  static const String sampleBodyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently ";
  static const String sampleAddressText = "College of Computing Studies, 2nd Floor Student Council Office, Campus B Western Mindanao State University";
  static const String sampleFollowingsText ="200";
  static const String sampleFollowers = "200";
  static const String sampleLikes = "1.5";
  static const String uploads = "10";


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


