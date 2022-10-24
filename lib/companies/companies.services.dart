import 'dart:convert';
import 'package:app_manage_company_data/common/configuration.dart' as cg;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CompanyServices {

  static Future<http.Response> postCreateCompany(Map<String, dynamic> bodyReq) async{
      String req = jsonEncode(bodyReq);
      var url = '${cg.urlBaseServices}/api/v1/companies';
      http.Response response = await http.post(
          Uri.parse(url),
          body: req,
          headers:{
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }
      ).timeout(const Duration(seconds: 120));
      if(response.statusCode == 200) {
        return response;
      }else{
        return response;
      }
  }

}