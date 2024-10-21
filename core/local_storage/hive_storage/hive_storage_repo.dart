
import 'package:hive/hive.dart';

class HiveStorageRepo {

  bool toBoolean(String str, [strict = false]) {
    if (strict == true) {
      return str == '1' || str == 'true';
    }
    return str != '0' && str != 'false' && str != '';
  }

  // static const storage = FlutterSecureStorage();

  static const boxKnackbe = 'knackbe_box';
  static const keyEntryPoint = 'entry_point';
  static const keyPlayBackgroundMusic = 'play_background_music';
  static const keyIsLoggedIn = 'is_logged_in';
  static const keyIsAddBlock = 'is_add_blocked';
  static const keyToken = 'token';
  static const keyUserId = 'user_id';
  static const keyFirstName = 'first_name';
  static const keyLastName = 'last_name';
  static const keyMobileNumber = 'mobile_number';
  static const keyAlternateMobileNumber = 'alternate_mobile_number';
  static const keyEmailId = 'email_id';
  static const keyAlternateEmailId = 'alternate_email_id';
  static const keyProfilePicPath = 'profile_pic_path';
  static const keyCoverImagePath = 'cover_image_path';

  var hiveBox = Hive.box(boxKnackbe);

// hiveBox.put(keyToken, 'Aaa');
}

