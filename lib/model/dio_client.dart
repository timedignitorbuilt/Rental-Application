

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

import '../ApiConstant/api_constant.dart';
import '../ConstantData/Constant_data.dart';

class ApiClients {
 final Dio _dio = Dio();


 Future<Map<String, dynamic>> registerDio(
     String name,
     String email,
     String password,
     String cpassword,
     String phoneNumber,
     String currentAddress,
     String permanentAddress,


     ) async {
   String url = ApiConstant().BaseUrl + ApiConstant().registerss;

   String? sessionToken =
   GetStorage().read<String>(ConstantData.UserAccessToken);
   print("Session Token: $sessionToken");

   var dataa = jsonEncode({ 'name': name,
   'email': email,
   'password': password,
   'cpassword': cpassword,
   'phoneNumber': phoneNumber,
   'currentAddress': currentAddress,
   'permanentAddress': permanentAddress,
  });
   print("data....> $dataa");
   try {
     Response response = await _dio.post<Map<String, dynamic>>(
       url,
       data : dataa,
       options: Options(
         headers: {
           'Authorization': 'Bearer $sessionToken',
         },
       ),
     );
    // print("data....>$dataa");
     print("statusCode --> ${response.statusCode}");
     print("dateeeee --> ${response.data}");
     return response.data;
   } on DioError catch (e) {
     return e.response!.data;
   }
 }


 Future<Map<String, dynamic>> loginDio(
     String email,
     String password,

     ) async {
   String url = ApiConstant().BaseUrl + ApiConstant().login;

   String? sessionToken =
   GetStorage().read<String>(ConstantData.UserAccessToken);
   print("Session Token: $sessionToken");

   var dataa = jsonEncode({
     'email': email,
     'password': password,
   });
   print("data....> $dataa");
   try {
     Response response = await _dio.post<Map<String, dynamic>>(
       url,
       data : dataa,
       options: Options(
         headers: {
           'Authorization': 'Bearer $sessionToken',
         },
       ),
     );
     // print("data....>$dataa");
     print("statusCode --> ${response.statusCode}");
     print("dateeeee --> ${response.data}");
     return response.data;
   } on DioError catch (e) {
     return e.response!.data;
   }
 }





}




