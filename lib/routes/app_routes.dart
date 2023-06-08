part of "app_pages.dart";

abstract class Routes {
  Routes._();
  static const LANDING = _Paths.LANDING;
  static const SIGNUP = _Paths.SIGNUP;
}

abstract class _Paths {
  _Paths._();
  static const LANDING = "/landing";
  static const SIGNUP = '/signup';
}
