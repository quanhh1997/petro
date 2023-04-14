import 'package:petro/app/data/api/api_connect.dart';
import 'package:petro/app/data/model/user.dart';
import 'package:petro/app/utils/constants.dart';

class HomeProvider {
  HomeProvider();

  // Get request
  Future<User> getUser() async {
    return User.fromJson(
      (await ApiConnect.instance.get(EndPoints.user)).getBody(),
    );
  }
}
