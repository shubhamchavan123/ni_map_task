
import 'package:flutter/foundation.dart';
import 'package:nimap/networking_model/api_base_model/base_url.dart';


/// Builds the URL
class URIBuilder {

  /// Get Curated Matches list
  getHeaderWithToken({required String token}) {
    // debugPrint
    return {
      // 'Authorization': 'Bearer $token',
      'Authorization': token,
      'Content-Type': 'application/json',
    };
  }

  getApiEndPointHeaderContentType() {
    // debugPrint
    return {
      'Content-Type': 'application/json',
    };
  }

  /// Login URI
  Uri getLoginData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.loginDomain,
    );
  }


  /// Claim URI
  Uri getClaimData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.claimDomain,
    );
  }

  /// Delete URI
  Uri getDeleteData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.deleteDomain,
    );
  }

  /// DeActivate URI
  Uri getDeActivateData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.deactivateDomain,
    );
  }



  /// Registration URI
  Uri getRegistrationData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.registartion,
    );
  }
  /// Forgot URI
  Uri getForgotData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.forgot,
    );
  }

  /// Login With OTP URI
  Uri getLoginWithOTPData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.loginwithotp,
    );
  }

  /// ChangePassword URI
  Uri getChangeData() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.changepassword,
    );
  }


  /// HomePost URI
  Uri getHomePost() {
    return Uri(
      scheme: BaseUrl.getProtocol,
      host: BaseUrl.baseUrl,
      path: BaseUrl.homePost,
    );
  }





}
