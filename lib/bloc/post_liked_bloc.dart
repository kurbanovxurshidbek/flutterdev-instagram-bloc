import 'package:bloc/bloc.dart';
import 'package:ngdemo17/bloc/post_liked_event.dart';
import 'package:ngdemo17/bloc/post_liked_state.dart';

import '../services/db_service.dart';

class PostLikedBloc extends Bloc<PostLikedEvent, PostLikedState> {
  PostLikedBloc() : super(PostLikedInitialState()) {
    on<LikePostEvent>(_onLikePostEvent);
    on<UnlikePostEvent>(_onUnlikePostEvent);
  }

  Future<void> _onLikePostEvent(LikePostEvent event, Emitter<PostLikedState> emit) async {

    await DBService.likePost(event.post, true);
    var post = event.post;
    post.liked = true;

    emit(PostLikedSuccessState(post: post));
  }

  Future<void> _onUnlikePostEvent(UnlikePostEvent event, Emitter<PostLikedState> emit) async {

    await DBService.likePost(event.post, false);
    var post = event.post;
    post.liked = false;

    emit(PostLikedSuccessState(post: post));
  }
}
