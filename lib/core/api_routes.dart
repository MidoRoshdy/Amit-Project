class ApiRoutes {
  static String baseUrl = "https://project2.amit-learning.com/api";
  //auth
  static String registerUrl = "$baseUrl/auth/register"; //? post
  static String loginUrl = "$baseUrl/auth/login"; //? post
  static String getOtp = "$baseUrl/auth/otp"; //? get
  static String updateNameAndPassword = "$baseUrl/auth/user/update"; //? put
  static String getProfile = "$baseUrl/auth/profile"; //? get

  //! Profile
  static String updateProfile = "$baseUrl/user/profile"; //? put
  static String editBioandData = "$baseUrl/user/profile/edit"; //? put
  static String editLanguage = "$baseUrl/user/profile/language"; //? put
  static String addPortfolio = "$baseUrl/user/profile/portofolios"; //? post
  static String getPortfolio = "$baseUrl/user/profile/portofolios"; //? get
  static String editPortfolio = "$baseUrl/user/profile/portofolios"; //? put
  static String deletePortfolio =
      "$baseUrl/user/profile/portofolios"; //? delete

  //jobs
  // ignore: non_constant_identifier_names
  static String SuggestedjobUrl = "$baseUrl/jobs/sugest/2"; //? get
  // ignore: non_constant_identifier_names
  static String ShowJobsUrl = "$baseUrl/jobs"; //? get
  static String searchJobs = "$baseUrl/jobs/search"; //? get
  static String filterSearch = "$baseUrl/jobs/filter"; //? get

  //favourite
  static String addFavouriteUrl = "$baseUrl/favorites"; //? post
  static String getFavorite = "$baseUrl/favorites"; //? get
  static String deleteFavouriteUrl = "$baseUrl/favorites/3"; //? delete

  //! Education
  static String addEducation = "$baseUrl/education"; //? post
  static String getEducation = "$baseUrl/education"; //? get
  static String editEducation = "$baseUrl/education"; //? put

  //! Experience
  static String addExperience = "$baseUrl/experince"; //? post
  static String endExperience = "$baseUrl/experince"; //? put
  //! Apply
  static String applyJob = "$baseUrl/apply"; //? post
  static String reviewApply = "$baseUrl/apply"; //? put

  //! Company
  static String createCompany = "$baseUrl/company"; //? post
}
