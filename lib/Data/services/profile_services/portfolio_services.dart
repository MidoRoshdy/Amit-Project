import 'dart:io';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../../../core/api_routes.dart';
import '../../models/portfolio_models/add_portfolio_response_model.dart';
import '../../models/portfolio_models/delete_portfolio_response_model.dart';
import '../../models/portfolio_models/edit_portfolio_response_model.dart';
import '../../models/portfolio_models/get_portfolio_response_model.dart';

class PortfolioServices {
  Future<AddPorfolioResponseModel> addPortfolio(
      String name, File file, String id, String token) async {
    Response response = await http.post(
        Uri.parse("${ApiRoutes.addPortfolio}/$id"),
        headers: {"Authorization": "Bearer $token"},
        body: {"cv_file": file.path, "name": name});

    AddPorfolioResponseModel addPorfolioResponseModel =
        addPorfolioResponseModelFromJson(response.body);
    return addPorfolioResponseModel;
  }

  Future<EditPorfolioResponseModel> editPortfolio(
      String name, String path, String id, String token) async {
    Response response = await http.put(
        Uri.parse("${ApiRoutes.editPortfolio}/$id"),
        headers: {"Authorization": "Bearer $token"},
        body: {"cv_file": path, "name": name});
    EditPorfolioResponseModel editPorfolioResponseModel =
        editPorfolioResponseModelFromJson(response.body);
    return editPorfolioResponseModel;
  }

  Future<GetPorfolioResponseModel> getPortfolio(String id, String token) async {
    Response response = await http.get(
        Uri.parse("${ApiRoutes.getPortfolio}/$id"),
        headers: {"Authorization": "Bearer $token"});
    GetPorfolioResponseModel getPorfolioResponseModel =
        getPorfolioResponseModelFromJson(response.body);
    return getPorfolioResponseModel;
  }

  Future<DeletePorfolioResponseModel> deletePortfolio(
      String id, String token) async {
    Response response = await http.delete(
        Uri.parse("${ApiRoutes.deletePortfolio}/$id"),
        headers: {"Authorization": "Bearer $token"});
    DeletePorfolioResponseModel deletePorfolioResponseModel =
        deletePorfolioResponseModelFromJson(response.body);
    return deletePorfolioResponseModel;
  }
}
