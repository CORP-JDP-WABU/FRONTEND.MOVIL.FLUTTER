enum AnalyticsScreen {
  onBoardWelcome('ON_BOARD_WELCOME'),
  onBoardLogin('ON_BOARD_LOGIN'),
  onBoardRegister('ON_BOARD_REGISTER'),
  onBoardValidateEmail('ON_BOARD_VALIDATE_EMAIL'),
  onBoardUserInfo('ON_BOARD_USER_INFO'),
  onBoardAddUniversity('ON_BOARD_ADD_UNIVERSITY'),
  onBoardPopupNews('ON_BOARD_POPUP_NEWS'),
  homeMainScreen('HOME_MAIN_SCREEN'),
  searchMainScreen('SEARCH_MAIN_SCREEN'),
  searchTeacherList('SEARCH_TEACHER_LIST'),
  searchTeacherProfile('SEARCH_TEACHER_PROFILE'),
  searchCourseList('SEARCH_COURSE_LIST'),
  searchCourseCarrousel('SEARCH_COURSE_CARROUSEL'),
  searchTeacherCourseProfile('SEARCH_TEACHER_COURSE_PROFILE'),
  searchTeacherComments('SEARCH_TEACHER_COMMENTS'),
  smashMainScreen('SMASH_MAIN_SCREEN'),
  smashTinderSwipe('SMASH_TINDER_SWIPE'),
  smashStep1('SMASH_STEP_1'),
  smashStep2('SMASH_STEP_2'),
  smashComment('SMASH_COMMENT');

  const AnalyticsScreen(this.name);
  final String name;
}
