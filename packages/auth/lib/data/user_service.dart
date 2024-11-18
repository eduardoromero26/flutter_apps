import 'package:auth/module.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commons/modules.dart';

class UserService {
  Future<UserModel?> getUser(String uid) async {
    try {
      DocumentSnapshot userDoc =
          await FirestoreService().readDocument(FirestoreKeys.users, uid);
      if (userDoc.exists) {
        final userModel = UserModel.fromDocument(
            userDoc.data() as Map<String, dynamic>, userDoc.id);
        await storeUserModel(userModel);
        return userModel;
      } else {
        Exception('User document does not exist');
        return null;
      }
    } catch (e) {
      Exception('Error getting user: $e');
      return null;
    }
  }

  Future<void> storeUserModel(UserModel userModel) async {
    try {
      String userModelJson = userModel.toJsonEncode();
      await SecureStorageService()
          .write(SecureStorageKeys.userModel, userModelJson);
    } catch (e) {
      Exception('Error storing user model: $e');
    }
  }

  Future<void> storeHouseIdInSecureStorage(String houseId) async {
    try {
      await SecureStorageService().write(SecureStorageKeys.houseId, houseId);
    } catch (e) {
      Exception('Error storing house ID: $e');
    }
  }
}
