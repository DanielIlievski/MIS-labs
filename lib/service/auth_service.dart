import 'package:mis_labs/model/dto/user_dto.dart';
import 'package:mis_labs/model/user.dart';

abstract class BaseAuthService {
  User signIn(UserDto userDto);
  void signOut();
  User? getCurrentUser();
}