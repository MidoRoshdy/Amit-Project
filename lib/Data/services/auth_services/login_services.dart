import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../../../core/api_routes.dart';
import '../../models/auth_models/login_response_model.dart';

class LoginServices {
  Future<LoginResponseModel> login(String email, String password) async {
    Response response = await http.post(Uri.parse(ApiRoutes.loginUrl),
        body: {"email": email, "password": password});
    if (response.statusCode == 200) {
      return loginResponseModelApprovedFromJson(response.body);
    } else {
      return loginResponseModelDeniedFromJson(response.body);
    }
  }
}
