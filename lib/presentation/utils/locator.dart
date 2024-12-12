import 'package:get_it/get_it.dart';

import '../../data/repository/repositories.dart';
import '../blocs/blocs.dart';

final getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerSingleton<PostRepository>(PostRepository());
  final PostRepository postRepository = getIt.get<PostRepository>();
  getIt.registerSingleton<PostsBloc>(PostsBloc(postRepository));
}
