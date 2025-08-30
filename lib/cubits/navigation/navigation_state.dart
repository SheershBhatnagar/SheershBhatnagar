part of 'navigation_cubit.dart';

class NavigationState {
  final int currentIndex;
  final int? hoveredIndex;

  NavigationState({
    required this.currentIndex,
    this.hoveredIndex,
  });

  NavigationState copyWith({
    int? currentIndex,
    int? hoveredIndex,
  }) {
    return NavigationState(
      currentIndex: currentIndex ?? this.currentIndex,
      hoveredIndex: hoveredIndex,
    );
  }
}
