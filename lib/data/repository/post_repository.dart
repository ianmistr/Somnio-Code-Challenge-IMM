import 'package:somnio_code_challenge/data/repository/i_post_repository.dart';
import '../../domain/entities/entities.dart';
import '../services/http_client.dart';
import '../services/url_paths.dart';

class PostRepository implements IPostRepository {
  @override
  Future<List> getPosts() async {
    final response = await httpClient.get(UrlPaths.getPosts);
    List posts = await response.data.map((post) {
      return Post.fromJson(post);
    }).toList();
    return posts;
  }

  final HttpClient httpClient = HttpClient();
}
