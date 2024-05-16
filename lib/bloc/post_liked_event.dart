
import 'package:equatable/equatable.dart';

import '../model/post_model.dart';

abstract class PostLikedEvent extends Equatable {
  const PostLikedEvent();
}

class LikePostEvent extends PostLikedEvent {
  Post post;

  LikePostEvent({required this.post});

  @override
  List<Object> get props => [];
}

class UnlikePostEvent extends PostLikedEvent {
  Post post;

  UnlikePostEvent({required this.post});

  @override
  List<Object> get props => [];
}
