enum AnalyticsContentType {
  button('BUTTON'),
  card('CARD'),
  option('UNIVERSITY_OPTION'),
  searchBar('SEARCH_BAR'),
  action('ACTION');

  const AnalyticsContentType(this.contentType);
  final String contentType;
}

enum AnalyticsContentItemId {
  logIn('LOG_IN'),
  signUp('SIGN_UP'),
  forgotPassword('FORGOT_PASSWORD'),
  enter('ENTER'),
  createAccount('CREATE_ACCOUNT'),
  resendCode('RESEND_CODE'),
  verifyCode('VERIFY_CODE'),
  noUniversity('NO_UNIVERSITY'),
  seeTerms('SEE_TERMS'),
  saveInfo('SAVE_INFO'),
  welcome('WELCOME'),
  homeNavigation('HOME_NAVIGATION'),
  searchNavigation('SEARCH_NAVIGATION'),
  smashNavigation('SMASH_NAVIGATION'),
  teacherCourseSearchBar('TEACHER_COURSE_SEARCH_BAR'),
  teacherCourseSearch('TEACHER_COURSE_SEARCH'),
  teacherCourseDocuments('TEACHER_COURSE_DOCUMENTS'), // No es clickeable
  teacherSearchCard('TEACHER_SEARCH_CARD'),
  teacherSearchRating('TEACHER_SEARCH_RATING'),
  teacherSearchOrder('TEACHER_SEARCH_ORDER'),
  teacherProfileCourse('TEACHER_PROFILE_COURSE'),
  teacherProfileSmash('TEACHER_PROFILE_SMASH'),
  courseSearchCard('COURSE_SEARCH_CARD'),
  courseTeacherDetails('COURSE_TEACHER_DETAILS'),
  courseSearchRating('COURSE_SEARCH_RATING'),
  courseSearchLearn('COURSE_SEARCH_LEARN'),
  courseSearchHigh('COURSE_SEARCH_HIGH'),
  courseSearchGood('COURSE_SEARCH_GOOD'),
  courseTeacherComments('COURSE_TEACHER_COMMENTS'),
  smashCard('SMASH_CARD'),
  compareCard('COMPARE_CARD'),
  teacherSmash('TEACHER_SMASH'),
  teacherIgnore('TEACHER_IGNORE'),
  teacherRequiredQualification('TEACHER_REQUIRED_QUALIFICATION'),
  teacherOptionalQualification('TEACHER_OPTIONAL_QUALIFICATION'),
  teacherPublishQualification('TEACHER_PUBLISH_QUALIFICATION'),
  teacherNoCommentQualification('TEACHER_NO_COMMENT_QUALIFICATION');

  const AnalyticsContentItemId(this.itemId);
  final String itemId;
}
