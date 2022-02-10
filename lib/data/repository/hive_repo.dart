import 'package:hive/hive.dart';
import 'package:movie/data/repository/movie_repo/test_repo.dart';
import 'package:provider/provider.dart';

class HiveRepo {
  HiveRepo();
  Box? favorit;
  void onFavoritePress(int index, context) {
    if (favorit!.containsKey(
        Provider.of<TestRepo>(context, listen: false).result[index].id)) {
      favorit!.delete(
          Provider.of<TestRepo>(context, listen: false).result[index].id);
      print(favorit!.values);

      return;
    }

    var x = Provider.of<TestRepo>(context, listen: false).result[index];
    favorit!
        .put(Provider.of<TestRepo>(context, listen: false).result[index].id, x);
    // .results![index]);
  }
}
