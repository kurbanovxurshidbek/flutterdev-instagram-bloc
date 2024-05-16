import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int currentIndex = 0;

  HomeBloc() : super(CurrentIndexState(currentIndex: 0)) {
    on<BottomNavEvent>((event, emit) async {
      emit(CurrentIndexState(currentIndex: event.currentIndex));
    });
    on<PageViewEvent>((event, emit) async {
      emit(CurrentIndexState(currentIndex: event.currentIndex));
    });
  }
}
