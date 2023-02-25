import 'package:mis_labs/model/dto/user_dto.dart';
import 'package:mis_labs/model/user.dart';
import 'package:mis_labs/service/auth_service.dart';

class SimpleAuthService extends BaseAuthService {
  static final SimpleAuthService _instance = SimpleAuthService._internal();

  factory SimpleAuthService() => _instance;

  SimpleAuthService._internal();

  User? _currentUser;

  @override
  User? getCurrentUser() {
    return _currentUser;
  }

  @override
  User signIn(UserDto userDto) {
    User user = User(identifier: userDto.identifier);
    _currentUser = user;
    return user;
  }

  @override
  void signOut() {
    _currentUser = null;
  }
}
