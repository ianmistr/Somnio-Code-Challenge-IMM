import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:somnio_code_challenge/data/repository/repositories.dart';
import 'package:somnio_code_challenge/presentation/blocs/blocs.dart';

void main() {
  group('Test posts bloc', () {
    late PostsBloc postsBloc;

    setUp(() {
      IPostRepository postsRepository = PostRepository();
      postsBloc = PostsBloc(postsRepository);
    });

    test('Init post bloc', () {
      expect(postsBloc.state, isA<PostsInitial>());
    });

    blocTest<PostsBloc, PostsState>(
      'Fetch posts',
      build: () => postsBloc,
      act: (bloc) => bloc.add(GetPosts()),
      wait: const Duration(seconds: 3),
      expect: () => [isA<PostsLoading>(), isA<PostsLoaded>()],
    );
  });
}
