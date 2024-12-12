import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/blocs.dart';
import '../../theme/responsive.dart';
import '../../utils/strings.dart';
import '../widgets.dart';

class PostsListWidget extends StatelessWidget {
  const PostsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
      if (state is PostsError) {
        return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
                top: Responsive.responsiveHeight(
                    MediaQuery.of(context).size.height, 0.3)),
            child: PostMessageLabelWidget(message: Strings.noData));
      }
      if (state is PostsLoaded) {
        return Expanded(
            child: Responsive.isSmartphone(
                    MediaQuery.of(context).size.shortestSide)
                ? ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12.0),
                    itemCount: state.posts.length,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        PostCardWidget(post: state.posts[index]))
                : PostGridWidget(posts: state.posts));
      }

      return Padding(
        padding: EdgeInsets.all(Responsive.responsiveHeight(
            MediaQuery.of(context).size.height, 0.3)),
        child: const CircularProgressIndicator(),
      );
    });
  }
}
