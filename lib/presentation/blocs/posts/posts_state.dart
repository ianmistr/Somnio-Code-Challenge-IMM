abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  PostsLoaded({required this.posts});

  final List posts;
}

class PostsError extends PostsState {}
