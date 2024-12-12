import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repository/i_post_repository.dart';
import '../blocs.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this.iPostRepository) : super(PostsInitial()) {
    on<GetPosts>((event, emit) async {
      emit(PostsLoading());
      List response = await iPostRepository.getPosts();
      emit(PostsLoaded(posts: response));
    });
  }

  final IPostRepository iPostRepository;
}
