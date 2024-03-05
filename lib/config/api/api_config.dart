class ApiConfig {
  const ApiConfig._();

  static const dev = _ApiData(
    securityBaseUrl: 'http://52.91.65.217:4000/api/',
    studentBaseUrl: 'http://52.91.65.217:4003/api/',
    universityBaseUrl: 'http://52.91.65.217:4002/api/',
    dashboardBaseUrl: 'http://52.91.65.217:4001/api/',
    operationBaseUrl: 'http://52.91.65.217:4004/api/',
  );

  static const prd = _ApiData(
    securityBaseUrl: 'https://www.wabupro.com/security/api/',
    studentBaseUrl: 'https://www.wabupro.com/student/api/',
    universityBaseUrl: 'https://www.wabupro.com/university/api/',
    dashboardBaseUrl: 'https://www.wabupro.com/dashboard/api/',
    operationBaseUrl: 'https://www.wabupro.com/operation/api/',
  );
}

class _ApiData {
  const _ApiData({
    required this.securityBaseUrl,
    required this.studentBaseUrl,
    required this.universityBaseUrl,
    required this.dashboardBaseUrl,
    required this.operationBaseUrl,
  });

  final String securityBaseUrl;
  final String studentBaseUrl;
  final String universityBaseUrl;
  final String dashboardBaseUrl;
  final String operationBaseUrl;
}
