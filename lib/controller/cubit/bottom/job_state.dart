part of 'job_cubit.dart';

@immutable
abstract class JobState {}

class JobInitial extends JobState {}
class ChangeBottomNavigation extends JobState {}
class SuggestJobSuccess extends JobState {}
class SuggestJobError extends JobState {}
class RecentJobSuccess extends JobState {}
class RecentJobError extends JobState {}


class ChangeSwitch extends JobState {}
class ChangeVisibility extends JobState {}
class CheckBoxRemember extends JobState {}


