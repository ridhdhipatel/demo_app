import '../Models/models.dart';

abstract class IDrinkRepository {
  Future<APIResponse<List<Drinks>>> getDrinks(String searchQuery);
}
