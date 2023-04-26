import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/models.dart';
import '../Repositories/i_drink_repository.dart';

class DrinkRepository implements IDrinkRepository {
  @override
  Future<APIResponse<List<Drinks>>> getDrinks(String searchQuery) {
    return http
        .get(Uri.parse(searchQuery.isEmpty
            ? 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s='
            : 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$searchQuery'))
        .then((response) {
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body)['drinks'];
        List<Drinks> itemData = [];
        for (var item in responseData) {
          itemData.add(Drinks.fromJson(item));
        }
        return APIResponse<List<Drinks>>(data: itemData);
      } else {
        return APIResponse<List<Drinks>>(
            isError: true, errorMessage: 'Not Loaded Drinks');
      }
    });
  }
}
