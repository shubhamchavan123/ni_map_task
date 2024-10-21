import 'package:flutter/foundation.dart';


const _protocol = 'https';



/// Live Api
// const _productionBaseUrl = 'liveapi.kbpro.in';
// const _debugBaseUrl = 'liveapi.kbpro.in';

/// QA Api
// const _productionBaseUrl = 'dummyjson.com';
// const _debugBaseUrl = 'dummyjson.com';

const _productionBaseUrl = 'qatodkarapi.todkarsanjeevani.com';
const _debugBaseUrl = 'qatodkarapi.todkarsanjeevani.com';


///for dev
// const _server = '/liveapi';


const _loginPath = '/api/User/login';
const _deletePath = '/Knackbe_api/public/api/v1/users/profie/UserPermanetlyDelete';
const _claimPath = '/Knackbe_api/public/api/v1/viralpost';
const _deactivatePath = '/Knackbe_api/public/api/v1/users/profie/ActiveDeActive';

const _registration = '/Knackbe_api/public/api/v1/users';
const _forgot = '/Knackbe_api/public/forgotPassword';
const _loginwithotp = '/Knackbe_api/public/loginWithOtp';
const _changepassword = '/Knackbe_api/public/changePassword';

const _homePost = '/api/Product/GetAllProductList';




class BaseUrl {
  /// Base URL
  static String get baseUrl {
    if (kReleaseMode) {
      return _productionBaseUrl;
    } else {
      return _debugBaseUrl;
    }
  }

  /// Protocol
  static String get getProtocol {
    return _protocol;
  }


  /// Login Url Path
  static String get loginDomain {
    return _loginPath;
  }

  /// Claim Url Path
  static String get claimDomain {
    return _claimPath;
  }
  /// Delete Url Path
  static String get deleteDomain {
    return _deletePath;
  }

  /// deactivate Domain Url Path
  static String get deactivateDomain {
    return _deactivatePath;
  }

  /// Registration
  static String get registartion {
    return _registration;
  }


  /// Forgot
  static String get forgot {
    return _forgot;
  }

  /// Login with otp
  static String get loginwithotp {
    return _loginwithotp;
  }

  /// ChangePassword
  static String get changepassword {
    return _changepassword;
  }


  /// Home Post
  static String get homePost {
    return _homePost;
  }



}
