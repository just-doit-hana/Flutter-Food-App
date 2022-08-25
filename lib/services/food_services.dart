import 'package:dio/dio.dart';
import 'package:ecommerce_app/services/baseAPI.dart';
import 'package:ecommerce_app/services/helper/crud.dart';

import '../model/homeProdect/homeProdectData.dart';

class FoodApi {
  static Future<List<HomeProdectData>> viewAllFoods(int pageIndex) async {
    var url = '${BaseAPI.authPath}' + '/products';

    var response = await Dio().get(url, queryParameters: {
      "pagesize": 8,
      "page": pageIndex,
    });
    Map<String, dynamic> data = new Map<String, dynamic>.from(response.data);
    final dataList = (response.data['data']['data'] as List)
        .map((e) => HomeProdectData.fromJson(e))
        .toList();

    return dataList;
  }

  static viewAllCategories() async {
    var url = '${BaseAPI.authPath}' + '/categories';

    var response = await Crud.getData(
      url,
    );
    return response.fold((l) => l, (r) => r);
  }
}
