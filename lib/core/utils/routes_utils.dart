enum PAGES {
  home,
  second,
}

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.second:
        return "/second";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.second:
        return "second";
      default:
        return "home";
    }
  }

  String get appbarTitle {
    switch (this) {
      case PAGES.second:
        return "Second Page";
      default:
        return "Home Page";
    }
  }
}
