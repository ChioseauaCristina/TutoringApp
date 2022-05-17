part of 'index1.dart';

@freezed
class GetCurrentTutor with _$GetCurrentTutor implements AppAction {
  const factory GetCurrentTutor() = GetCurrentTutorStart;

  const factory GetCurrentTutor.successful(AppUser? user) = GetCurrentTutorSuccessful;

  @Implements<ErrorAction>()
  const factory GetCurrentTutor.error(Object error, StackTrace stackTrace) = GetCurrentTutorError;
}
