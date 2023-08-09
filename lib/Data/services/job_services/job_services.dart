import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../../../core/api_routes.dart';
import '../../models/job_models/show_jobs_response_model.dart';
import '../../models/job_models/show_suggested_jobs_response_model.dart';

class JobServices {
  Future<ShowJobsResponseModel> getJobs(String token) async {
    Response response = await http.get(Uri.parse(ApiRoutes.ShowJobsUrl),
        headers: {"Authorization": "Bearer $token"});
    ShowJobsResponseModel showJobsResponseModel =
        showJobsResponseModelFromJson(response.body);
    return showJobsResponseModel;
  }

  Future<ShowSuggestedJobsResponseModel> showSuggestedJobs(
      String id, String token) async {
    Response response = await http.get(
        Uri.parse("${ApiRoutes.SuggestedjobUrl}/$id"),
        headers: {"Authorization": "Bearer $token"});
    ShowSuggestedJobsResponseModel showSuggestedJobsResponseModel =
        showSuggestedJobsResponseModelFromJson(response.body);
    return showSuggestedJobsResponseModel;
  }

  // TODO : Search and filter "ask for"
}
