import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(currentIndex: 0));

  void setCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void setHoveredIndex(int? index) {
    emit(state.copyWith(hoveredIndex: index));
  }
}
