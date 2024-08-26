class AppIcons {
  //--------- Icon paths related Strings -----------
  final String accountCancelFilled;
  final String accountCancelOutline;
  final String addCircleFilled;
  final String addCircleOutline;
  final String add;
  final String arrowBack;
  final String arrowDownward;
  final String arrowDropDown;
  final String arrowDropUp;
  final String arrowForward;
  final String arrowLeft;
  final String arrowRight;
  final String arrowUpward;
  final String block;
  final String calendarMonthFilled;
  final String calendarMonthOutline;
  final String checkCircleFilled;
  final String checkCircleOutline;
  final String check;
  final String chevronDoubleArrowDown;
  final String chevronDoubleArrowLeft;
  final String chevronDoubleArrowRight;
  final String chevronDoubleArrowUp;
  final String chevronLeft;
  final String chevronRight;
  final String clockFilled;
  final String clockOutline;
  final String closeFilled;
  final String closeOutline;
  final String close;
  final String dangerousFilled;
  final String dangerousOutline;
  final String databaseSyncFilled;
  final String databaseSyncOutline;
  final String deleteFilled;
  final String deleteOutline;
  final String doneAll;
  final String errorFilled;
  final String errorOutline;
  final String eventAvailableFilled;
  final String eventAvailableOutline;
  final String eventBusyFilled;
  final String eventBusyOutline;
  final String groupsFilled;
  final String groupsOutline;
  final String homeFilled;
  final String homeOutline;
  final String keyboardArrowDown;
  final String keyboardArrowUp;
  final String logout;
  final String medicalServicesFilled;
  final String medicalServicesOutline;
  final String menu;
  final String pauseFilled;
  final String pauseOutline;
  final String personalInjuryFilled;
  final String personalInjuryOutline;
  final String playArrowFilled;
  final String playArrowOutline;
  final String qrCodeOff;
  final String qrCodeScan;
  final String qrCode;
  final String removeFilled;
  final String removeOutline;
  final String remove;
  final String reportFilled;
  final String reportOutline;
  final String search;
  final String settingsFilled;
  final String settingsOutline;
  final String sort;
  final String sprint;
  final String visibilityFilled;
  final String visibilityOffFilled;
  final String visibilityOffOutline;
  final String visibilityOutline;
  final String warningFilled;
  final String warningOutline;

  static AppIcons? _icons;
  static AppIcons get icons => _icons!;
  static Future<void> setIcons({String data = ''}) async {
    // fetch icons path from api or cache
    _icons = AppIcons(
      accountCancelFilled: 'assets/icons/account-cancel-filled.svg',
      accountCancelOutline: 'assets/icons/account-cancel-outline.svg',
      addCircleFilled: 'assets/icons/add-circle-filled.svg',
      addCircleOutline: 'assets/icons/add-circle-outline.svg',
      add: 'assets/icons/add.svg',
      arrowBack: 'assets/icons/arrow-back.svg',
      arrowDownward: 'assets/icons/arrow-downward.svg',
      arrowDropDown: 'assets/icons/arrow-drop-down.svg',
      arrowDropUp: 'assets/icons/arrow-drop-up.svg',
      arrowForward: 'assets/icons/arrow-forward.svg',
      arrowLeft: 'assets/icons/arrow-left.svg',
      arrowRight: 'assets/icons/arrow-right.svg',
      arrowUpward: 'assets/icons/arrow-upward.svg',
      block: 'assets/icons/block.svg',
      calendarMonthFilled: 'assets/icons/calendar-month-filled.svg',
      calendarMonthOutline: 'assets/icons/calendar-month-outline.svg',
      checkCircleFilled: 'assets/icons/check-circle-filled.svg',
      checkCircleOutline: 'assets/icons/check-circle-outline.svg',
      check: 'assets/icons/check.svg',
      chevronDoubleArrowDown: 'assets/icons/chevron-double-arrow-down.svg',
      chevronDoubleArrowLeft: 'assets/icons/chevron-double-arrow-left.svg',
      chevronDoubleArrowRight: 'assets/icons/chevron-double-arrow-right.svg',
      chevronDoubleArrowUp: 'assets/icons/chevron-double-arrow-up.svg',
      chevronLeft: 'assets/icons/chevron-left.svg',
      chevronRight: 'assets/icons/chevron-right.svg',
      clockFilled: 'assets/icons/clock-filled.svg',
      clockOutline: 'assets/icons/clock-outline.svg',
      closeFilled: 'assets/icons/close-filled-filled.svg',
      closeOutline: 'assets/icons/close-outline-outline.svg',
      close: 'assets/icons/close.svg',
      dangerousFilled: 'assets/icons/dangerous-filled.svg',
      dangerousOutline: 'assets/icons/dangerous-outline.svg',
      databaseSyncFilled: 'assets/icons/database-sync-filled.svg',
      databaseSyncOutline: 'assets/icons/database-sync-outline.svg',
      deleteFilled: 'assets/icons/delete-filled.svg',
      deleteOutline: 'assets/icons/delete-outline.svg',
      doneAll: 'assets/icons/done-all.svg',
      errorFilled: 'assets/icons/error-filled.svg',
      errorOutline: 'assets/icons/error-outline.svg',
      eventAvailableFilled: 'assets/icons/event-available-filled.svg',
      eventAvailableOutline: 'assets/icons/event-available-outline.svg',
      eventBusyFilled: 'assets/icons/event-busy-filled.svg',
      eventBusyOutline: 'assets/icons/event-busy-outline.svg',
      groupsFilled: 'assets/icons/groups-filled.svg',
      groupsOutline: 'assets/icons/groups-outline.svg',
      homeFilled: 'assets/icons/home-filled.svg',
      homeOutline: 'assets/icons/home-outline.svg',
      keyboardArrowDown: 'assets/icons/keyboard-arrow-down.svg',
      keyboardArrowUp: 'assets/icons/keyboard-arrow-up.svg',
      logout: 'assets/icons/logout.svg',
      medicalServicesFilled: 'assets/icons/medical-services-filled.svg',
      medicalServicesOutline: 'assets/icons/medical-services-outline.svg',
      menu: 'assets/icons/menu.svg',
      pauseFilled: 'assets/icons/pause-filled.svg',
      pauseOutline: 'assets/icons/pause-outline.svg',
      personalInjuryFilled: 'assets/icons/personal-injury-filled.svg',
      personalInjuryOutline: 'assets/icons/personal-injury-outline.svg',
      playArrowFilled: 'assets/icons/play-arrow-filled.svg',
      playArrowOutline: 'assets/icons/play-arrow-outline.svg',
      qrCodeOff: 'assets/icons/qr-code-off.svg',
      qrCodeScan: 'assets/icons/qr-code-scan.svg',
      qrCode: 'assets/icons/qr-code.svg',
      removeFilled: 'assets/icons/remove-filled.svg',
      removeOutline: 'assets/icons/remove-outline.svg',
      remove: 'assets/icons/remove.svg',
      reportFilled: 'assets/icons/report-filled.svg',
      reportOutline: 'assets/icons/report-outline.svg',
      search: 'assets/icons/search.svg',
      settingsFilled: 'assets/icons/settings-filled.svg',
      settingsOutline: 'assets/icons/settings-outline.svg',
      sort: 'assets/icons/sort.svg',
      sprint: 'assets/icons/sprint.svg',
      visibilityFilled: 'assets/icons/visibility-filled.svg',
      visibilityOffFilled: 'assets/icons/visibility-off-filled.svg',
      visibilityOffOutline: 'assets/icons/visibility-off-outline.svg',
      visibilityOutline: 'assets/icons/visibility-outline.svg',
      warningFilled: 'assets/icons/warning-filled.svg',
      warningOutline: 'assets/icons/warning-outline.svg',
    ).copyWith();

    if (data == 'yes') {
      _icons = _icons!.copyWith(warningOutline: icons.visibilityOffOutline);
    }
  }

  Map<String, String> getMap() {
    return {
      'accountCancelFilled': accountCancelFilled,
      'accountCancelOutline': accountCancelOutline,
      'addCircleFilled': addCircleFilled,
      'addCircleOutline': addCircleOutline,
      'add': add,
      'arrowBack': arrowBack,
      'arrowDownward': arrowDownward,
      'arrowDropDown': arrowDropDown,
      'arrowDropUp': arrowDropUp,
      'arrowForward': arrowForward,
      'arrowLeft': arrowLeft,
      'arrowRight': arrowRight,
      'arrowUpward': arrowUpward,
      'block': block,
      'calendarMonthFilled': calendarMonthFilled,
      'calendarMonthOutline': calendarMonthOutline,
      'checkCircleFilled': checkCircleFilled,
      'checkCircleOutline': checkCircleOutline,
      'check': check,
      'chevronDoubleArrowDown': chevronDoubleArrowDown,
      'chevronDoubleArrowLeft': chevronDoubleArrowLeft,
      'chevronDoubleArrowRight': chevronDoubleArrowRight,
      'chevronDoubleArrowUp': chevronDoubleArrowUp,
      'chevronLeft': chevronLeft,
      'chevronRight': chevronRight,
      'clockFilled': clockFilled,
      'clockOutline': clockOutline,
      'closeFilled': closeFilled,
      'closeOutline': closeOutline,
      'close': close,
      'dangerousFilled': dangerousFilled,
      'dangerousOutline': dangerousOutline,
      'databaseSyncFilled': databaseSyncFilled,
      'databaseSyncOutline': databaseSyncOutline,
      'deleteFilled': deleteFilled,
      'deleteOutline': deleteOutline,
      'doneAll': doneAll,
      'errorFilled': errorFilled,
      'errorOutline': errorOutline,
      'eventAvailableFilled': eventAvailableFilled,
      'eventAvailableOutline': eventAvailableOutline,
      'eventBusyFilled': eventBusyFilled,
      'eventBusyOutline': eventBusyOutline,
      'groupsFilled': groupsFilled,
      'groupsOutline': groupsOutline,
      'homeFilled': homeFilled,
      'homeOutline': homeOutline,
      'keyboardArrowDown': keyboardArrowDown,
      'keyboardArrowUp': keyboardArrowUp,
      'logout': logout,
      'medicalServicesFilled': medicalServicesFilled,
      'medicalServicesOutline': medicalServicesOutline,
      'menu': menu,
      'pauseFilled': pauseFilled,
      'pauseOutline': pauseOutline,
      'personalInjuryFilled': personalInjuryFilled,
      'personalInjuryOutline': personalInjuryOutline,
      'playArrowFilled': playArrowFilled,
      'playArrowOutline': playArrowOutline,
      'qrCodeOff': qrCodeOff,
      'qrCodeScan': qrCodeScan,
      'qrCode': qrCode,
      'removeFilled': removeFilled,
      'removeOutline': removeOutline,
      'remove': remove,
      'reportFilled': reportFilled,
      'reportOutline': reportOutline,
      'search': search,
      'settingsFilled': settingsFilled,
      'settingsOutline': settingsOutline,
      'sort': sort,
      'sprint': sprint,
      'visibilityFilled': visibilityFilled,
      'visibilityOffFilled': visibilityOffFilled,
      'visibilityOffOutline': visibilityOffOutline,
      'visibilityOutline': visibilityOutline,
      'warningFilled': warningFilled,
      'warningOutline': warningOutline,
    };
  }

  AppIcons(
      {required this.accountCancelFilled,
      required this.accountCancelOutline,
      required this.addCircleFilled,
      required this.addCircleOutline,
      required this.add,
      required this.arrowBack,
      required this.arrowDownward,
      required this.arrowDropDown,
      required this.arrowDropUp,
      required this.arrowForward,
      required this.arrowLeft,
      required this.arrowRight,
      required this.arrowUpward,
      required this.block,
      required this.calendarMonthFilled,
      required this.calendarMonthOutline,
      required this.checkCircleFilled,
      required this.checkCircleOutline,
      required this.check,
      required this.chevronDoubleArrowDown,
      required this.chevronDoubleArrowLeft,
      required this.chevronDoubleArrowRight,
      required this.chevronDoubleArrowUp,
      required this.chevronLeft,
      required this.chevronRight,
      required this.clockFilled,
      required this.clockOutline,
      required this.closeFilled,
      required this.closeOutline,
      required this.close,
      required this.dangerousFilled,
      required this.dangerousOutline,
      required this.databaseSyncFilled,
      required this.databaseSyncOutline,
      required this.deleteFilled,
      required this.deleteOutline,
      required this.doneAll,
      required this.errorFilled,
      required this.errorOutline,
      required this.eventAvailableFilled,
      required this.eventAvailableOutline,
      required this.eventBusyFilled,
      required this.eventBusyOutline,
      required this.groupsFilled,
      required this.groupsOutline,
      required this.homeFilled,
      required this.homeOutline,
      required this.keyboardArrowDown,
      required this.keyboardArrowUp,
      required this.logout,
      required this.medicalServicesFilled,
      required this.medicalServicesOutline,
      required this.menu,
      required this.pauseFilled,
      required this.pauseOutline,
      required this.personalInjuryFilled,
      required this.personalInjuryOutline,
      required this.playArrowFilled,
      required this.playArrowOutline,
      required this.qrCodeOff,
      required this.qrCodeScan,
      required this.qrCode,
      required this.removeFilled,
      required this.removeOutline,
      required this.remove,
      required this.reportFilled,
      required this.reportOutline,
      required this.search,
      required this.settingsFilled,
      required this.settingsOutline,
      required this.sort,
      required this.sprint,
      required this.visibilityFilled,
      required this.visibilityOffFilled,
      required this.visibilityOffOutline,
      required this.visibilityOutline,
      required this.warningFilled,
      required this.warningOutline});

  // AppIcons appIcon() {
  //   return AppIcons(
  //       accountCancelFilled:                accountCancelFilled,
  //       accountCancelOutline:               accountCancelOutline,
  //       addCircleFilled:                    addCircleFilled,
  //       addCircleOutline:                    addCircleOutline,
  //       add:  add,
  //       arrowBack: arrowBack,
  //       arrowDownward: arrowDownward,
  //       arrowDropDown: arrowDropDown,
  //       arrowDropUp: arrowDropUp,
  //       arrowForward: arrowForward,
  //       arrowLeft: arrowLeft,
  //       arrowRight: arrowRight,
  //       arrowUpward: arrowUpward,
  //       block: block,
  //       calendarMonthFilled: calendarMonthFilled,
  //       calendarMonthOutline: calendarMonthOutline,
  //       checkCircleFilled: checkCircleFilled,
  //       checkCircleOutline: checkCircleOutline,
  //       check: check,
  //       chevronDoubleArrowDown: chevronDoubleArrowDown,
  //       chevronDoubleArrowLeft: chevronDoubleArrowLeft,
  //       chevronDoubleArrowRight: chevronDoubleArrowRight,
  //       chevronDoubleArrowUp: chevronDoubleArrowUp,
  //       chevronLeft: chevronLeft,
  //       chevronRight: chevronRight,
  //       clockFilled: clockFilled,
  //       clockOutline: clockOutline,
  //       closeFilled: closeFilled,
  //       closeOutline: closeOutline,
  //       close: close,
  //       dangerousFilled: dangerousFilled,
  //       dangerousOutline: dangerousOutline,
  //       databaseSyncFilled: databaseSyncFilled,
  //       databaseSyncOutline: databaseSyncOutline,
  //       deleteFilled: deleteFilled,
  //       deleteOutline: deleteOutline,
  //       doneAll: doneAll,
  //       errorFilled: errorFilled,
  //       errorOutline: errorOutline,
  //       eventAvailableFilled: eventAvailableFilled,
  //       eventAvailableOutline: eventAvailableOutline,
  //       eventBusyFilled: eventBusyFilled,
  //       eventBusyOutline: eventBusyOutline,
  //       groupsFilled: groupsFilled,
  //       groupsOutline: groupsOutline,
  //       homeFilled: homeFilled,
  //       homeOutline: homeOutline,
  //       keyboardArrowDown: keyboardArrowDown,
  //       keyboardArrowUp: keyboardArrowUp,
  //       logout: logout,
  //       medicalServicesFilled: medicalServicesFilled,
  //       medicalServicesOutline: medicalServicesOutline,
  //       menu: menu,
  //       pauseFilled: pauseFilled,
  //       pauseOutline: pauseOutline,
  //       personalInjuryFilled: personalInjuryFilled,
  //       personalInjuryOutline: personalInjuryOutline,
  //       playArrowFilled: playArrowFilled,
  //       playArrowOutline: playArrowOutline,
  //       qrCodeOff: qrCodeOff,
  //       qrCodeScan: qrCodeScan,
  //       qrCode: qrCode,
  //       removeFilled: removeFilled,
  //       removeOutline: removeOutline,
  //       remove: remove,
  //       reportFilled: reportFilled,
  //       reportOutline: reportOutline,
  //       search: search,
  //       settingsFilled: settingsFilled,
  //       settingsOutline: settingsOutline,
  //       sort: sort,
  //       sprint: sprint,
  //       visibilityFilled: visibilityFilled,
  //       visibilityOffFilled: visibilityOffFilled,
  //       visibilityOffOutline: visibilityOffOutline,
  //       visibilityOutline: visibilityOutline,
  //       warningFilled: warningFilled,
  //       warningOutline: warningOutline);
  // }
  AppIcons copyWith(
      {String? accountCancelFilled,
      String? accountCancelOutline,
      String? addCircleFilled,
      String? addCircleOutline,
      String? add,
      String? arrowBack,
      String? arrowDownward,
      String? arrowDropDown,
      String? arrowDropUp,
      String? arrowForward,
      String? arrowLeft,
      String? arrowRight,
      String? arrowUpward,
      String? block,
      String? calendarMonthFilled,
      String? calendarMonthOutline,
      String? checkCircleFilled,
      String? checkCircleOutline,
      String? check,
      String? chevronDoubleArrowDown,
      String? chevronDoubleArrowLeft,
      String? chevronDoubleArrowRight,
      String? chevronDoubleArrowUp,
      String? chevronLeft,
      String? chevronRight,
      String? clockFilled,
      String? clockOutline,
      String? closeFilled,
      String? closeOutline,
      String? close,
      String? dangerousFilled,
      String? dangerousOutline,
      String? databaseSyncFilled,
      String? databaseSyncOutline,
      String? deleteFilled,
      String? deleteOutline,
      String? doneAll,
      String? errorFilled,
      String? errorOutline,
      String? eventAvailableFilled,
      String? eventAvailableOutline,
      String? eventBusyFilled,
      String? eventBusyOutline,
      String? groupsFilled,
      String? groupsOutline,
      String? homeFilled,
      String? homeOutline,
      String? keyboardArrowDown,
      String? keyboardArrowUp,
      String? logout,
      String? medicalServicesFilled,
      String? medicalServicesOutline,
      String? menu,
      String? pauseFilled,
      String? pauseOutline,
      String? personalInjuryFilled,
      String? personalInjuryOutline,
      String? playArrowFilled,
      String? playArrowOutline,
      String? qrCodeOff,
      String? qrCodeScan,
      String? qrCode,
      String? removeFilled,
      String? removeOutline,
      String? remove,
      String? reportFilled,
      String? reportOutline,
      String? search,
      String? settingsFilled,
      String? settingsOutline,
      String? sort,
      String? sprint,
      String? visibilityFilled,
      String? visibilityOffFilled,
      String? visibilityOffOutline,
      String? visibilityOutline,
      String? warningFilled,
      String? warningOutline}) {
    return AppIcons(
        accountCancelFilled: accountCancelFilled ?? this.accountCancelFilled,
        accountCancelOutline: accountCancelOutline ?? this.accountCancelOutline,
        addCircleFilled: addCircleFilled ?? this.addCircleFilled,
        addCircleOutline: addCircleOutline ?? this.addCircleOutline,
        add: add ?? this.add,
        arrowBack: arrowBack ?? this.arrowBack,
        arrowDownward: arrowDownward ?? this.arrowDownward,
        arrowDropDown: arrowDropDown ?? this.arrowDropDown,
        arrowDropUp: arrowDropUp ?? this.arrowDropUp,
        arrowForward: arrowForward ?? this.arrowForward,
        arrowLeft: arrowLeft ?? this.arrowLeft,
        arrowRight: arrowRight ?? this.arrowRight,
        arrowUpward: arrowUpward ?? this.arrowUpward,
        block: block ?? this.block,
        calendarMonthFilled: calendarMonthFilled ?? this.calendarMonthFilled,
        calendarMonthOutline: calendarMonthOutline ?? this.calendarMonthOutline,
        checkCircleFilled: checkCircleFilled ?? this.checkCircleFilled,
        checkCircleOutline: checkCircleOutline ?? this.checkCircleOutline,
        check: check ?? this.check,
        chevronDoubleArrowDown:
            chevronDoubleArrowDown ?? this.chevronDoubleArrowDown,
        chevronDoubleArrowLeft:
            chevronDoubleArrowLeft ?? this.chevronDoubleArrowLeft,
        chevronDoubleArrowRight:
            chevronDoubleArrowRight ?? this.chevronDoubleArrowRight,
        chevronDoubleArrowUp: chevronDoubleArrowUp ?? this.chevronDoubleArrowUp,
        chevronLeft: chevronLeft ?? this.chevronLeft,
        chevronRight: chevronRight ?? this.chevronRight,
        clockFilled: clockFilled ?? this.clockFilled,
        clockOutline: clockOutline ?? this.clockOutline,
        closeFilled: closeFilled ?? this.closeFilled,
        closeOutline: closeOutline ?? this.closeOutline,
        close: close ?? this.close,
        dangerousFilled: dangerousFilled ?? this.dangerousFilled,
        dangerousOutline: dangerousOutline ?? this.dangerousOutline,
        databaseSyncFilled: databaseSyncFilled ?? this.databaseSyncFilled,
        databaseSyncOutline: databaseSyncOutline ?? this.databaseSyncOutline,
        deleteFilled: deleteFilled ?? this.deleteFilled,
        deleteOutline: deleteOutline ?? this.deleteOutline,
        doneAll: doneAll ?? this.doneAll,
        errorFilled: errorFilled ?? this.errorFilled,
        errorOutline: errorOutline ?? this.errorOutline,
        eventAvailableFilled: eventAvailableFilled ?? this.eventAvailableFilled,
        eventAvailableOutline:
            eventAvailableOutline ?? this.eventAvailableOutline,
        eventBusyFilled: eventBusyFilled ?? this.eventBusyFilled,
        eventBusyOutline: eventBusyOutline ?? this.eventBusyOutline,
        groupsFilled: groupsFilled ?? this.groupsFilled,
        groupsOutline: groupsOutline ?? this.groupsOutline,
        homeFilled: homeFilled ?? this.homeFilled,
        homeOutline: homeOutline ?? this.homeOutline,
        keyboardArrowDown: keyboardArrowDown ?? this.keyboardArrowDown,
        keyboardArrowUp: keyboardArrowUp ?? this.keyboardArrowUp,
        logout: logout ?? this.logout,
        medicalServicesFilled:
            medicalServicesFilled ?? this.medicalServicesFilled,
        medicalServicesOutline:
            medicalServicesOutline ?? this.medicalServicesOutline,
        menu: menu ?? this.menu,
        pauseFilled: pauseFilled ?? this.pauseFilled,
        pauseOutline: pauseOutline ?? this.pauseOutline,
        personalInjuryFilled: personalInjuryFilled ?? this.personalInjuryFilled,
        personalInjuryOutline:
            personalInjuryOutline ?? this.personalInjuryOutline,
        playArrowFilled: playArrowFilled ?? this.playArrowFilled,
        playArrowOutline: playArrowOutline ?? this.playArrowOutline,
        qrCodeOff: qrCodeOff ?? this.qrCodeOff,
        qrCodeScan: qrCodeScan ?? this.qrCodeScan,
        qrCode: qrCode ?? this.qrCode,
        removeFilled: removeFilled ?? this.removeFilled,
        removeOutline: removeOutline ?? this.removeOutline,
        remove: remove ?? this.remove,
        reportFilled: reportFilled ?? this.reportFilled,
        reportOutline: reportOutline ?? this.reportOutline,
        search: search ?? this.search,
        settingsFilled: settingsFilled ?? this.settingsFilled,
        settingsOutline: settingsOutline ?? this.settingsOutline,
        sort: sort ?? this.sort,
        sprint: sprint ?? this.sprint,
        visibilityFilled: visibilityFilled ?? this.visibilityFilled,
        visibilityOffFilled: visibilityOffFilled ?? this.visibilityOffFilled,
        visibilityOffOutline: visibilityOffOutline ?? this.visibilityOffOutline,
        visibilityOutline: visibilityOutline ?? this.visibilityOutline,
        warningFilled: warningFilled ?? this.warningFilled,
        warningOutline: warningOutline ?? this.warningOutline);
  }
}

// static const a ='assets/icons/account-cancel-filled.svg';
// static const a ='assets/icons/account-cancel-outline.svg';
// static const a ='assets/icons/add-circle-filled.svg';
// static const a ='assets/icons/add-circle-outline.svg';
// static const a ='assets/icons/add.svg';
// static const a ='assets/icons/arrow-back.svg';
// static const a ='assets/icons/arrow-downward.svg';
// static const a ='assets/icons/arrow-drop-down.svg';
// static const a ='assets/icons/arrow-drop-up.svg';
// static const a ='assets/icons/arrow-forward.svg';
// static const a ='assets/icons/arrow-left.svg';
// static const a ='assets/icons/arrow-right.svg';
// static const a ='assets/icons/arrow-upward.svg';
// static const a ='assets/icons/block.svg';
// static const a ='assets/icons/calendar-month-filled.svg';
// static const a ='assets/icons/calendar-month-outline.svg';
// static const a ='assets/icons/check-circle-filled.svg';
// static const a ='assets/icons/check-circle-outline.svg';
// static const a ='assets/icons/check.svg';
// static const a ='assets/icons/chevron-double-arrow-down.svg';
// static const a ='assets/icons/chevron-double-arrow-left.svg';
// static const a ='assets/icons/chevron-double-arrow-right.svg';
// static const a ='assets/icons/chevron-double-arrow-up.svg';
// static const a ='assets/icons/chevron-left.svg';
// static const a ='assets/icons/chevron-right.svg';
// static const a ='assets/icons/clock-filled.svg';
// static const a ='assets/icons/clock-outline.svg';
// static const a ='assets/icons/close-filled-filled.svg';
// static const a ='assets/icons/close-outline-outline.svg';
// static const a ='assets/icons/close.svg';
// static const a ='assets/icons/dangerous-filled.svg';
// static const a ='assets/icons/dangerous-outline.svg';
// static const a ='assets/icons/database-sync-filled.svg';
// static const a ='assets/icons/database-sync-outline.svg';
// static const a ='assets/icons/delete-filled.svg';
// static const a ='assets/icons/delete-outline.svg';
// static const a ='assets/icons/done-all.svg';
// static const a ='assets/icons/error-filled.svg';
// static const a ='assets/icons/error-outline.svg';
// static const a ='assets/icons/event-available-filled.svg';
// static const a ='assets/icons/event-available-outline.svg';
// static const a ='assets/icons/event-busy-filled.svg';
// static const a ='assets/icons/event-busy-outline.svg';
// static const a ='assets/icons/groups-filled.svg';
// static const a ='assets/icons/groups-outline.svg';
// static const a ='assets/icons/home-filled.svg';
// static const a ='assets/icons/home-outline.svg';
// static const a ='assets/icons/keyboard-arrow-down.svg';
// static const a ='assets/icons/keyboard-arrow-up.svg';
// static const a ='assets/icons/logout.svg';
// static const a ='assets/icons/medical-services-filled.svg';
// static const a ='assets/icons/medical-services-outline.svg';
// static const a ='assets/icons/menu.svg';
// static const a ='assets/icons/pause-filled.svg';
// static const a ='assets/icons/pause-outline.svg';
// static const a ='assets/icons/personal-injury-filled.svg';
// static const a ='assets/icons/personal-injury-outline.svg';
// static const a ='assets/icons/play-arrow-filled.svg';
// static const a ='assets/icons/play-arrow-outline.svg';
// static const a ='assets/icons/qr-code-off.svg';
// static const a ='assets/icons/qr-code-scan.svg';
// static const a ='assets/icons/qr-code.svg';
// static const a ='assets/icons/remove-filled.svg';
// static const a ='assets/icons/remove-outline.svg';
// static const a ='assets/icons/remove.svg';
// static const a ='assets/icons/report-filled.svg';
// static const a ='assets/icons/report-outline.svg';
// static const a ='assets/icons/search.svg';
// static const a ='assets/icons/settings-filled.svg';
// static const a ='assets/icons/settings-outline.svg';
// static const a ='assets/icons/sort.svg';
// static const a ='assets/icons/sprint.svg';
// static const a ='assets/icons/visibility-filled.svg';
// static const a ='assets/icons/visibility-off-filled.svg';
// static const a ='assets/icons/visibility-off-outline.svg';
// static const a ='assets/icons/visibility-outline.svg';
// static const a ='assets/icons/warning-filled.svg';
// static const a ='assets/icons/warning-outline.svg';

 // static const accountCancelFilled = 'assets/icons/account-cancel-filled.svg';
  // static const accountCancelOutline = 'assets/icons/account-cancel-outline.svg';
  // static const addCircleFilled = 'assets/icons/add-circle-filled.svg';
  // static const addCircleOutline = 'assets/icons/add-circle-outline.svg';
  // static const add = 'assets/icons/add.svg';
  // static const arrowBack = 'assets/icons/arrow-back.svg';
  // static const arrowDownward = 'assets/icons/arrow-downward.svg';
  // static const arrowDropDown = 'assets/icons/arrow-drop-down.svg';
  // static const arrowDropUp = 'assets/icons/arrow-drop-up.svg';
  // static const arrowForward = 'assets/icons/arrow-forward.svg';
  // static const arrowLeft = 'assets/icons/arrow-left.svg';
  // static const arrowRight = 'assets/icons/arrow-right.svg';
  // static const arrowUpward = 'assets/icons/arrow-upward.svg';
  // static const block = 'assets/icons/block.svg';
  // static const calendarMonthFilled = 'assets/icons/calendar-month-filled.svg';
  // static const calendarMonthOutline = 'assets/icons/calendar-month-outline.svg';
  // static const checkCircleFilled = 'assets/icons/check-circle-filled.svg';
  // static const checkCircleOutline = 'assets/icons/check-circle-outline.svg';
  // static const check = 'assets/icons/check.svg';
  // static const chevronDoubleArrowDown =
  //     'assets/icons/chevron-double-arrow-down.svg';
  // static const chevronDoubleArrowLeft =
  //     'assets/icons/chevron-double-arrow-left.svg';
  // static const chevronDoubleArrowRight =
  //     'assets/icons/chevron-double-arrow-right.svg';
  // static const chevronDoubleArrowUp =
  //     'assets/icons/chevron-double-arrow-up.svg';
  // static const chevronLeft = 'assets/icons/chevron-left.svg';
  // static const chevronRight = 'assets/icons/chevron-right.svg';
  // static const clockFilled = 'assets/icons/clock-filled.svg';
  // static const clockOutline = 'assets/icons/clock-outline.svg';
  // static const closeFilled = 'assets/icons/close-filled.svg';
  // static const closeOutline = 'assets/icons/close-outline.svg';
  // static const close = 'assets/icons/close.svg';
  // static const dangerousFilled = 'assets/icons/dangerous-filled.svg';
  // static const dangerousOutline = 'assets/icons/dangerous-outline.svg';
  // static const databaseSyncFilled = 'assets/icons/database-sync-filled.svg';
  // static const databaseSyncOutline = 'assets/icons/database-sync-outline.svg';
  // static const deleteFilled = 'assets/icons/delete-filled.svg';
  // static const deleteOutline = 'assets/icons/delete-outline.svg';
  // static const doneAll = 'assets/icons/done-all.svg';
  // static const errorFilled = 'assets/icons/error-filled.svg';
  // static const errorOutline = 'assets/icons/error-outline.svg';
  // static const eventAvailableFilled = 'assets/icons/event-available-filled.svg';
  // static const eventAvailableOutline =
  //     'assets/icons/event-available-outline.svg';
  // static const eventBusyFilled = 'assets/icons/event-busy-filled.svg';
  // static const eventBusyOutline = 'assets/icons/event-busy-outline.svg';
  // static const groupsFilled = 'assets/icons/groups-filled.svg';
  // static const groupsOutline = 'assets/icons/groups-outline.svg';
  // static const homeFilled = 'assets/icons/home-filled.svg';
  // static const homeOutline = 'assets/icons/home-outline.svg';
  // static const keyboardArrowDown = 'assets/icons/keyboard-arrow-down.svg';
  // static const keyboardArrowUp = 'assets/icons/keyboard-arrow-up.svg';
  // static const logout = 'assets/icons/logout.svg';
  // static const medicalServicesFilled =
  //     'assets/icons/medical-services-filled.svg';
  // static const medicalServicesOutline =
  //     'assets/icons/medical-services-outline.svg';
  // static const menu = 'assets/icons/menu.svg';
  // static const pauseFilled = 'assets/icons/pause-filled.svg';
  // static const pauseOutline = 'assets/icons/pause-outline.svg';
  // static const personalInjuryFilled = 'assets/icons/personal-injury-filled.svg';
  // static const personalInjuryOutline =
  //     'assets/icons/personal-injury-outline.svg';
  // static const playArrowFilled = 'assets/icons/play-arrow-filled.svg';
  // static const playArrowOutline = 'assets/icons/play-arrow-outline.svg';
  // static const qrCodeOff = 'assets/icons/qr-code-off.svg';
  // static const qrCodeScan = 'assets/icons/qr-code-scan.svg';
  // static const qrCode = 'assets/icons/qr-code.svg';
  // static const removeFilled = 'assets/icons/remove-filled.svg';
  // static const removeOutline = 'assets/icons/remove-outline.svg';
  // static const remove = 'assets/icons/remove.svg';
  // static const reportFilled = 'assets/icons/report-filled.svg';
  // static const reportOutline = 'assets/icons/report-outline.svg';
  // static const search = 'assets/icons/search.svg';
  // static const settingsFilled = 'assets/icons/settings-filled.svg';
  // static const settingsOutline = 'assets/icons/settings-outline.svg';
  // static const sort = 'assets/icons/sort.svg';
  // static const sprint = 'assets/icons/sprint.svg';
  // static const visibilityFilled = 'assets/icons/visibility-filled.svg';
  // static const visibilityOffFilled = 'assets/icons/visibility-off-filled.svg';
  // static const visibilityOffOutline = 'assets/icons/visibility-off-outline.svg';
  // static const visibilityOutline = 'assets/icons/visibility-outline.svg';
  // static const warningFilled = 'assets/icons/warning-filled.svg';
  // static const warningOutline = 'assets/icons/warning-outline.svg';


