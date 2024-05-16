import 'package:equatable/equatable.dart';

import '../model/post_model.dart';

abstract class PostLikedState extends Equatable{

}

class PostLikedInitialState extends PostLikedState {
  @override
  List<Object?> get props => [];

}

class PostLikedSuccessState extends PostLikedState {
  Post post;

  PostLikedSuccessState({required this.post});

  @override
  List<Object?> get props => [post];
}

