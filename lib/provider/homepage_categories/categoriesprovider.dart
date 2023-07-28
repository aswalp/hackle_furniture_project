import 'package:flutter_riverpod/flutter_riverpod.dart';

final categorieprovider = Provider<List<String>>((ref) {
  return ["Chair", "wardrobes", "Tables", "Beds", "Sofa"];
});

final categoriechangingprovider = StateProvider<int>((ref) {
  return 0;
});
